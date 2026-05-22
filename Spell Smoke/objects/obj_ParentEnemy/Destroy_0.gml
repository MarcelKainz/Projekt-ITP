nb = random(1)
if (nb < 0.125)
{
    instance_create_layer(x-8, y-8, "Instances", obj_Key);
}
else if (nb < 0.7)
{
    var bone = instance_create_layer(x-8, y-8, "Instances", obj_Bone);
	bone.boneamount = round(lootMod * bone.boneamount); 
}