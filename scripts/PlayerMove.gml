/// PlayerMove();
// Allows player movement (revise later to add physics, possibly?).
GetInput();

imgspd = 0.20;

if (!listening) {
    if (up) {
        sprite_index = spr_player_u;
        global.dir = 0;
        
        image_speed = imgspd;
        y -= 2;
    }
    
    if (down) {
        sprite_index = spr_player_d;
        global.dir = 1;
         
        image_speed = imgspd;
        y += 2;
    }
    
    if (left) {
        sprite_index = spr_player_l;
        global.dir = 2;
        
        image_speed = imgspd;
        x -= 2;
    }
    
    if (right) {
        sprite_index = spr_player_r;
        global.dir = 3;
        
        image_speed = imgspd;
        x += 2;
    }
    
    if (!up and !down and !left and !right) {
        image_speed = 0;
        image_index = 0;
    }
}

if (close) {
    game_end();
}

if (fullscreen) {
    if (!window_get_fullscreen()) {
        window_set_fullscreen(true);
    } else {
        window_set_fullscreen(false);
    }
}

// Debug keys.
if (debug) {
    if (nextRoom) {
        room_goto_next();
    }
            
    if (previousRoom) {
        room_goto_previous();
    }
            
    if (showCollisions) {
        if (instance_exists(obj_collision)) obj_collision.visible = true;
        if (instance_exists(obj_npc_collision)) obj_npc_collision.visible = true;
    }
}
