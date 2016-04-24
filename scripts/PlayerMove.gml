/// player_move();
// Allows player movement (revise later to add physics, possibly?).
GetInput();

imgspd = 0.20;

if (!listening) {
    if (up) {
        if (!global.earthbound) {
            sprite_index = spr_player_u;
            facing = 0;
        } else {
            sprite_index = spr_ebplayer_u;
        }
        
        image_speed = imgspd;
        y -= 2;
    }
    
    if (keyboard_check_released(ord("F"))) {
        Fade("out");
    }
    
    if (down) {
        if (!global.earthbound) {
            sprite_index = spr_player_d;
            facing = 1;
        } else {
            sprite_index = spr_ebplayer_d;
        }
         
        image_speed = imgspd;
        y += 2;
    }
    
    if (left) {
        if (!global.earthbound) {
            sprite_index = spr_player_l;
            facing = 2;
        } else {
            sprite_index = spr_ebplayer_l;
        }
        
        image_speed = imgspd;
        x -= 2;
    }
    
    if (right) {
        if (!global.earthbound) {
            sprite_index = spr_player_r;
            facing = 3;
        } else {
            sprite_index = spr_ebplayer_r;
        }
        
        image_speed = imgspd;
        x += 2;
    }
    
    if (global.earthbound) {
        if (up and left) {
            sprite_index = spr_ebplayer_tl;
        }
        
        if (up and right) {
            sprite_index = spr_ebplayer_tr;
        }
        
        if (down and left) {
            sprite_index = spr_ebplayer_bl;
        }
        
        if (down and right) {
            sprite_index = spr_ebplayer_br;
        }
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

if (instance_exists(obj_player)) {
    if (obj_player.debugKeys) {
        if (nextRoom) {
            room_goto_next();
        }
        
        if (previousRoom) {
            room_goto_previous();
        }
        
        if (showCollisions) {
            obj_collision.visible = true;
        }
        
        if (showWarps) {
            obj_firstwarp.visible = true;
        }
        
        if (showMisc) {
            obj_fade.visible = true;
        }
    }
}
