precision highp float;

varying vec2 f_src_pos;

uniform sampler2D u_texture;

const vec3 threshold = vec3(0.01);

const vec3 unpaused = vec3(0.867);
const vec3 paused = vec3(0.263);

void main() {
    vec4 color = texture2D(u_texture, f_src_pos);

    if (all(lessThan(abs(color.rgb - unpaused), threshold)) || all(lessThan(abs(color.rgb - paused), threshold))) {
        gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
    } else {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
    }
}

// vim:ft=glsl
