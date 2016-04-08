/// new_text("text");
// Creates a text box (hopefully) similar to Undertale's.

txt = instance_create(0, 0, obj_text_new);
with (txt) {
    // font = argument[0];
    // sound = argument[1];
    // textSpeed = argument[2];
    text = argument[0];
    
    length = string_length(text);
    letter[0] = ""
    letterArray = 0;
    
    while (letterArray < length) {
        letter[letterArray] = string_char_at(text, letterArray);
        letterArray++;
    }
}
