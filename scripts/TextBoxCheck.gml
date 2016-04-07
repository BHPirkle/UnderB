/// TextBoxCheck(messageArray, portrait, sound, font);
get_input();
// Variables for checking.
var readThrough = false;
textCreate = false;

// Checks for deletion.
if (instance_exists(obj_dialogue)) {
    if (interact and obj_dialogue.message_current == obj_dialogue.message_end - 1) {
        obj_player.listening = false;
        with (obj_dialogue) {
            instance_destroy();
        }
    }
    
    readThrough = true;
}

// Checks for creation.
if (interact and obj_player.listening == false and !instance_exists(obj_dialogue) and readThrough == false) {
    textCreate = true;
    obj_player.listening = true;
}
