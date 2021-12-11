-- neovim config
-- helpers/terminal.lua

function spawn_bottom_terminal()
    local ui = vim.api.nvim_list_uis()[1]
    local height = 10

    local bufnr = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_option(bufnr, "filetype", "FloatingTerminal")

    vim.api.nvim_open_win(bufnr, true, {
        relative = "editor",
        style = "minimal",
        width = ui.width,
        height = height,

        row = ui.height - height,
        col = 0
    })
    vim.cmd[[terminal]]
end

function spawn_floating_terminal()
    local ui = vim.api.nvim_list_uis()[1]

    local width = 120
    local height = 32
    local xp = (ui.width / 2) - (width / 2)
    local yp = (ui.height / 2) - (height / 2)

    local bufnr = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_option(bufnr, "filetype", "FloatingTerminal")

    vim.api.nvim_open_win(bufnr, true, {
        relative = "editor",
        border = "rounded",
        style = "minimal",

        width = width,
        height = height,

        row = yp,
        col = xp
    })
    vim.cmd[[terminal]]
end

return {
    bottom_terminal = spawn_bottom_terminal,
    floating_terminal = spawn_floating_terminal
}
