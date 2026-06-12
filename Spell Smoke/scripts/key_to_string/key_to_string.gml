function key_to_string(_key) {
    switch (_key) {
        case "buttonMoveUp": if(global.buttonMoveUp == vk_up){return "ArrowUp"} else{return chr(global.buttonMoveUp)};
        case "buttonMoveDown": if(global.buttonMoveDown == vk_down){return "ArrowDown"} else{return chr(global.buttonMoveDown)};
        case "buttonMoveLeft": if(global.buttonMoveLeft == vk_left){return "ArrowLeft"} else{return chr(global.buttonMoveLeft)};
        case "buttonMoveRight": if(global.buttonMoveRight == vk_right){return "ArrowRight"} else{return chr(global.buttonMoveRight)};
        case "buttonSprint": if(global.buttonSprint == vk_shift){return "Shift"} else{return chr(global.buttonSprint);}
        default:       return $"{_key}";
    }
}