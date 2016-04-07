/// TextBox(messageArray, portrait, sound, font);
// All text box things here and in the object are mainly derived from Diestware's "Advanced Dialogue Box Tutorial."
// That makes most of this not mine, so I do not claim any of it.
obj_player.listening = true;

var sent = argument0;
var portrait = argument1;
var sound = argument2;
var font = argument3;

var text = instance_create(0, 0, obj_dialogue);

text.portrait = portrait;
text.sound = sound;
text.font = font;
for (i = 0; i < array_length_1d(sent); i++)
{
    text.message[i] = sent[i];
}
