/// TextBoxCheck();
// Checks for creation and deletion of text boxes.
GetInput();

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
        
        readThrough = true;
    }
}

// Checks for creation.
if (interact and distance_to_object(obj_player) < 5 and obj_player.listening == false and !instance_exists(obj_dialogue) and !readThrough) {
    textCreate = true;
}
