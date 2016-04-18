/// Fade(in/out);
// Fades in or out.
var fade = argument0;

fadeObj = instance_create(0, 0, obj_fade);

if (fade == "in") {
    with (fadeObj) {
        fadeIn = true;
        fadeOut = false;
        alpha = 1;
        
        alarm[1] = 30;
    }
} else if (fade == "out") {
    with (fadeObj) {
        fadeIn = true;
        fadeOut = false;
        alpha = 0;
        
        alarm[0] = 1;
    }
} else {
    message[1] = "\2Error.";
    
    TextBox(message, "none", sfx_text, fnt_8bit);
}
