package main

import (
	"bufio"
	"fmt"
	"os"
	"os/exec"
	"strconv"
	"strings"
	"time"

	"github.com/jezek/xgb"
	"github.com/jezek/xgb/xproto"
)

var bar_ram int
var bar_wifi bool
var bar_vol string
var bar_time string

var update chan int

func die(error error) {
    if error != nil {
        panic(error)
    }
}

func update_ram() {
    for {
        bytes, err := os.ReadFile("/proc/meminfo")
        die(err)

        data := string(bytes)
        lines := strings.Split(data, "\n")

        ram_total, err := strconv.Atoi(strings.Fields(lines[0])[1])
        die(err)

        ram_avail, err := strconv.Atoi(strings.Fields(lines[2])[1])
        die(err)

        bar_ram = ram_total - ram_avail

        time.Sleep(1 * time.Second)
    }
}

func update_wifi() {
    for {
        bytes, err := os.ReadFile("/sys/class/net/wlan0/operstate")
        die(err)

        data := string(bytes)
        bar_wifi = data == "up\n"

        time.Sleep(1 * time.Second)
    }
}

func update_vol() {
    pactl_cmd := exec.Command("pactl", "subscribe")
    reader, err := pactl_cmd.StdoutPipe()
    die(err)

    err = pactl_cmd.Start()
    die(err)

    scanner := bufio.NewScanner(reader)

    // wait for sink update notice
    for scanner.Scan() {
        if strings.Contains(scanner.Text(), "sink") {
            get_vol()

            // signal bar update
            update <- 0
        }
    }
}

func get_vol() {
    vol_cmd := exec.Command("pactl", "get-sink-volume", "@DEFAULT_SINK@")

    out, err := vol_cmd.Output()
    die(err)

    bar_vol = strings.Fields(string(out))[4]
    die(err)
}

func update_time() {
    for {
        bar_time = time.Now().Local().Format("03:04 PM")
        time.Sleep(1 * time.Second)
    }
}

func update_cycle() {
    for {
        time.Sleep(1 * time.Second)
        update <- 0
    }
}

func main() {
    // x connection
    conn, err := xgb.NewConn()
    die(err)

    defer conn.Close()
    root := xproto.Setup(conn).DefaultScreen(conn).Root

    // setup update channel
    update = make(chan int)

    // bar components
    go update_ram()
    go update_wifi()
    go update_vol()
    go update_time()
    
    // bar timer
    go update_cycle()

    get_vol()
    
    // update forever
    for {
        // wait for update signal
        <-update

        var wifi_status string
        if bar_wifi {
            wifi_status = "up"
        } else {
            wifi_status = "down"
        }

        str_ram     := fmt.Sprintf("^B3^^C0^  ^B0^^C3^ %.2f GB ^d^ ", float32(bar_ram) / 1000000)
        str_wifi    := fmt.Sprintf("^B5^^C0^  ^B0^^C5^ %s ^d^ ", wifi_status)
        str_vol     := fmt.Sprintf("^B6^^C0^  ^B0^^C6^ %s ^d^ ", bar_vol)
        str_time    := fmt.Sprintf("^B1^^C0^  ^B0^^C1^ %s ^d^ ", bar_time)
        bar_str := str_ram + str_wifi + str_vol + str_time

        xproto.ChangeProperty(
            conn,
            xproto.PropModeReplace,
            root,
            xproto.AtomWmName,
            xproto.AtomString,
            8,
            uint32(len(bar_str)),
            []byte(bar_str),
        )
    }
}
