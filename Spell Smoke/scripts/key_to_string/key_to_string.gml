function key_to_string(_key) {
    switch (_key) {
        
        case "buttonMoveUp":
            switch (global.buttonMoveUp) {
                case vk_up:    return "ArrowUp";
                case vk_down:  return "ArrowDown";
                case vk_left:  return "ArrowLeft";
                case vk_right: return "ArrowRight";
                case vk_space: return "Space";
                case vk_shift:
                case vk_lshift:
                case vk_rshift:   return "Shift";
                case vk_control:
                case vk_lcontrol:
                case vk_rcontrol: return "Strg";
                default:          return chr(global.buttonMoveUp);
            }

        case "buttonMoveDown":
            switch (global.buttonMoveDown) {
                case vk_up:    return "ArrowUp";
                case vk_down:  return "ArrowDown";
                case vk_left:  return "ArrowLeft";
                case vk_right: return "ArrowRight";
                case vk_space: return "Space";
                case vk_shift:
                case vk_lshift:
                case vk_rshift:   return "Shift";
                case vk_control:
                case vk_lcontrol:
                case vk_rcontrol: return "Strg";
                default:          return chr(global.buttonMoveDown);
            }

        case "buttonMoveLeft":
            switch (global.buttonMoveLeft) {
                case vk_up:    return "ArrowUp";
                case vk_down:  return "ArrowDown";
                case vk_left:  return "ArrowLeft";
                case vk_right: return "ArrowRight";
                case vk_space: return "Space";
                case vk_shift:
                case vk_lshift:
                case vk_rshift:   return "Shift";
                case vk_control:
                case vk_lcontrol:
                case vk_rcontrol: return "Strg";
                default:          return chr(global.buttonMoveLeft);
            }

        case "buttonMoveRight":
            switch (global.buttonMoveRight) {
                case vk_up:    return "ArrowUp";
                case vk_down:  return "ArrowDown";
                case vk_left:  return "ArrowLeft";
                case vk_right: return "ArrowRight";
                case vk_space: return "Space";
                case vk_shift:
                case vk_lshift:
                case vk_rshift:   return "Shift";
                case vk_control:
                case vk_lcontrol:
                case vk_rcontrol: return "Strg";
                default:          return chr(global.buttonMoveRight);
            }

        case "buttonSprint":
            switch (global.buttonSprint) {
                case vk_up:    return "ArrowUp";
                case vk_down:  return "ArrowDown";
                case vk_left:  return "ArrowLeft";
                case vk_right: return "ArrowRight";
                case vk_space: return "Space";
                case vk_shift:
                case vk_lshift:
                case vk_rshift:   return "Shift";
                case vk_control:
                case vk_lcontrol:
                case vk_rcontrol: return "Strg";
                default:          return chr(global.buttonSprint);
            }

        default:
            return $"{_key}";
    }
}