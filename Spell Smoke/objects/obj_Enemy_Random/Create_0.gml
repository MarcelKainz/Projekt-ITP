enemy = random(100)

if (enemy <= 75) instance_create_layer(x, y, "instances", obj_Enemy_Ghoul)
else instance_create_layer(x, y, "instances", obj_Enemy_Wraith)

instance_destroy();