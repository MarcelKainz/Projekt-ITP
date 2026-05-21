varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float flash;

void main()
{
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    vec3 redFlash = vec3(1.0, 0.0, 0.0);

    // mischt normales Sprite mit Rot
    base.rgb = mix(base.rgb, redFlash, flash);

    gl_FragColor = base * v_vColour;
}