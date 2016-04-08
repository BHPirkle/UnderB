/// text_box_n("text", font, speed, sound);

textBox = instance_create(0, 0, obj_text);

with (textBox) {
    text = argument[0];
    font = argument[1];
    textSpeed = argument[2];
    sound = argument[3];
    
    // Beginning of not my code.
    
    max_length = (273 * 2);
    padding = 8;
    
    font_size = font_get_size(font);
    // Gets the size of the font for printing to the screen.
    
    text_width = string_width_ext(text, font_size + (font_size / 2), max_length);
    // Gets the width of the string
    text_height = string_height_ext(text, font_size + (font_size / 2), max_length);
    // Gets the height of the string.
    
    box_width = text_width + (padding * 2);
    // Gets the width of the text box by getting the string's width and adding the padding.
    box_height = text_height + (padding * 2);
    // Gets the height of the text box by getting the string's height and adding the padding.
    
    // Ending of not my code.
    
    //  a = 0;
    //  b = 1;
    // Starts at 1 becuase the first character in a string is considered number 1.
    //  char[a] = "";
    // This just stores nothing in the char array, in order to create it.
    
    textLength = string_length(text);
    // Gets the length of the string input and stores it.
}
