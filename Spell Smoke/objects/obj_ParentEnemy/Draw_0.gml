//this demands the "damageFlash" variable, if it's above 0, it applies the shader
shader_set(shd_DamageFlash); 

var uFlash = shader_get_uniform(shd_DamageFlash, "flash");
shader_set_uniform_f(uFlash, damageFlash);

draw_self();

shader_reset();