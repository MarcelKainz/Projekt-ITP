draw_self();
 
if(price!=0)
{
	draw_text(x, y+sprite_height, price);
	draw_sprite(spr_Bone, real, x+20, y+sprite_height);
}