/// player_move();
// Allows player movement (revise later to add physics, possibly?).
get_input();

imgspd = 0.10;

if (four and two) {
    show_message(string(global.timePlayed));
}
if (!listening) {
    if (up) {
        if (!earthbound) {
            sprite_index = spr_player_u;
        } else {
            sprite_index = spr_ebplayer_u;
        }
        
        image_speed = imgspd;
        y -= 1;
    }
    
    if (down) {
        if (!earthbound) {
            sprite_index = spr_player_d;
        } else {
            sprite_index = spr_ebplayer_d;
        }
         
        image_speed = imgspd;
        y += 1;
    }
    
    if (left) {
        if (!earthbound) {
            sprite_index = spr_player_l;
        } else {
            sprite_index = spr_ebplayer_l;
        }
        
        image_speed = imgspd;
        x -= 1;
    }
    
    if (right) {
        if (!earthbound) {
            sprite_index = spr_player_r;
        } else {
            sprite_index = spr_ebplayer_r;
        }
        
        image_speed = imgspd;
        x += 1;
    }
    
    if (earthbound) {
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
