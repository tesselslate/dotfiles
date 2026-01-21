precision highp float;

varying vec2 f_src_pos;

uniform sampler2D u_texture;

const float threshold = 0.01;
const vec3 pink = vec3(0.882, 0.271, 0.761); // #e145c2
const vec3 pink2 = vec3(0.894, 0.275, 0.769); // #e446c4
const vec3 orange = vec3(0.914, 0.427, 0.302); // #e96d4d
const vec3 orange2 = vec3(0.925, 0.431, 0.306); // #ec6e4e
const vec3 green = vec3(0.271, 0.796, 0.396); // #45cb65
const vec3 green2 = vec3(0.271, 0.800, 0.396); // #45cc65

void main() {
    vec4 color = texture2D(u_texture, f_src_pos);

    bool is_pink = all(lessThan(abs(color.rgb - pink), vec3(threshold)))
        || all(lessThan(abs(color.rgb - pink2), vec3(threshold)));
    bool is_orange = all(lessThan(abs(color.rgb - orange), vec3(threshold)))
        || all(lessThan(abs(color.rgb - orange2), vec3(threshold)));
    bool is_green = all(lessThan(abs(color.rgb - green), vec3(threshold)))
        || all(lessThan(abs(color.rgb - green2), vec3(threshold)));

    if (is_pink || is_orange || is_green) {
        gl_FragColor = color;
    } else {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
    }
}

// vim:ft=glsl
