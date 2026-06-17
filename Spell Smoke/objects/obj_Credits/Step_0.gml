credits_pos -= scroll_speed;

// Letzte Zeile ist komplett oben verschwunden
if (credits_pos + 450 < 0)
{
    room_goto(rm_StartMenu);
}