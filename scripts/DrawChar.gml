/// DrawChar(char, number, color);
// Draws characters. Messy, but works.
// Initiate variables.
var char = argument0;
var num = argument1;
var color = argument2;
var space = 20 * num;
var line = 0;

// Set prerequisites.
draw_set_color(color);
draw_set_font(fnt_8bit);
draw_set_halign(fa_left);

// Checks for when to go to the next line.
if (space == 20 * 6) {
    space = 0;
    line += 20;
}

// Draw text.
draw_text(x + space, y + line, char);
