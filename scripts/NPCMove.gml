/// NPCMove(delay, move time);
var delay = argument0;
var moveTime = argument1;
var imgspd = 0.07;
t++;
// Timer variable.

// This if function should allow for a timer.
if (t > delay * 60) {
    var dir = irandom_range(0, 3);
    // Gets which move it will take next.
    
    switch (dir) {
        case 0: // Up.
        {
            sprite_index = spr_mom_u;
            image_speed = imgspd;
            
            t = 0;
        
            while (t < moveTime * 60) {
                y -= 0.05;
                show_message(t);
                
                t++;
            }
            
            image_speed = 0;
            t = 0;
            break;
        }
        
        case 1: // Down.
        {
            sprite_index = spr_mom_d;
            image_speed = imgspd;
            
            for (m = 0; m < moveTime * 60; m++) {
                y += 0.05;
            }
            
            image_speed = 0;
            t = 0;
            break;
        }
        
        case 2: // Left.
        {
            sprite_index = spr_mom_l;
            image_speed = imgspd;
        
            for (m = 0; m < moveTime * 60; m++) {
                x -= 0.05;
            }
            
            image_speed = 0;
            t = 0;
            break;
        }
        
        case 3: // Right.
        {
            sprite_index = spr_mom_u;
            image_speed = imgspd;
        
            for (m = 0; m < moveTime * 60; m++) {
                x += 0.05;
            }
            
            image_speed = 0;
            t = 0;
            break;
        }
    }
}
