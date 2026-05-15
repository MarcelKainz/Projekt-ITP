draw_self();

if (sprite_index == spr_EasyDifficultyButton){
draw_text(x, y+100, "Easy");
draw_text(x, y+150, "Prepare yourself in 20 Rooms before facing the Boss.");
}

if (sprite_index == spr_MediumDifficultyButton){
draw_text(x, y+100, "Medium");
draw_text(x, y+150, "Prepare yourself in 15 Rooms before facing the Boss.");
}

if (sprite_index == spr_HardDifficultyButton){
draw_text(x, y+100, "Hard");
draw_text(x, y+150, "Prepare yourself in 10 Rooms before facing the Boss.");
}

if (sprite_index == spr_EndlessModeButton){
draw_text(x, y+100, "Endless");
draw_text(x, y+150, "No boss. look how long you can survive in the dungeon.");
}