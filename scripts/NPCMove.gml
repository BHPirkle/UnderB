/// NPCMove(up, down, left, right, dummy);
// A helper script for NPC movement in the game.
depth = -y;
// Updates depth based on y position of the sprite's origin.

// Sprite image names.
var up = argument0;
var down = argument1;
var left = argument2;
var right = argument3;
var dummy = argument4;

var imageSpeed = 0.10;

switch (dir) {
    case 0: // Up
    {
        sprite_index = up;
        image_speed = imageSpeed;
        y -= 1;
        
        break;
    }
    
    case 1: // Down
    {
        sprite_index = down;
        image_speed = imageSpeed;
        y += 1;
        
        break;
    }
    
    case 2: // Left
    {
        sprite_index = left;
        image_speed = imageSpeed;
        x -= 1;
        
        break;
    }
    
    case 3: // Right
    {
        sprite_index = right;
        image_speed = imageSpeed;
        x += 1;
        
        break;
    }
}

dummyObj = instance_create(x, y, dummy);
