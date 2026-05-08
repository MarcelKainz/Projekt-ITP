draw_sprite(spr_Door, 0, 32, 32);

if(roomsPassed <= roomsToBoss)
{
	draw_text(80, 40,
	    string(roomsPassed) + "/" + string(roomsToBoss)
	);
}
else
{
	draw_text(80, 40, "Final Room");
}

draw_sprite(spr_TreasureHealth, 0, 32, 64);
draw_text(80, 72, hp);