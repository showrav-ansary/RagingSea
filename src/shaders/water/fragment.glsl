uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;


varying float vElavation;

void main(){
    float mixStrength = (vElavation + uColorOffset) * uColorMultiplier;;
    vec3 color = mix(uDepthColor, uSurfaceColor, mixStrength );

    gl_FragColor = vec4(color, 1.0);
}