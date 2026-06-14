function key_to_string(_key) {
    switch (_key) {
        case vk_space: return "Leertaste";
        case vk_left:  return "Links";
        case vk_right: return "Rechts";
        case vk_up:    return "Oben";
        case vk_down:  return "Unten";
        case vk_enter: return "Enter";
        default:       return chr(_key);
    }
}