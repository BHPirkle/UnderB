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
