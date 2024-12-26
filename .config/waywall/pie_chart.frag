precision highp float;

varying vec2 f_src_pos;

uniform sampler2D u_texture;

const float threshold = 0.01;
const vec3 pink = vec3(0.882, 0.271, 0.761); // #e145c2
const vec3 orange = vec3(0.914, 0.427, 0.302); // #e96d4d
const vec3 green = vec3(0.271, 0.796, 0.396); // #45cb65

void main() {
    vec4 color = texture2D(u_texture, f_src_pos);

    bool is_pink = all(lessThan(abs(color.rgb - pink), vec3(threshold)));
    bool is_orange = all(lessThan(abs(color.rgb - orange), vec3(threshold)));
    bool is_green = all(lessThan(abs(color.rgb - green), vec3(threshold)));

    if (is_pink || is_orange || is_green) {
        gl_FragColor = color;
    } else {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
    }
}

// vim:ft=glsl
