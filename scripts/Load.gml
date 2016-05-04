/// Load(fname);
// Reads the save file? I think?
// I hope...

fname = argument0;

if (file_exists(fname)) {
    // Opens the file for reading and stores it in a variable.
    file = file_text_open_read(fname);
    
    // Reads username.
    global.username = file_text_read_string(file);
    file_text_readln(file);
    
    // Reads the player's LOVE.
    global.love = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads the player's health.
    global.hp = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads the player's max health.
    global.maxHP = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads the player's attack.
    global.attack = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads the attack from equipped items.
    global.exAttack = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads the player's defence.
    global.defence = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads the defence from equipped items.
    global.exDefence = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads experience.
    global.xp = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads amount of gold.
    global.gold = file_text_read_real(file);
    file_text_readln(file);
    
    // Reads the number of kills.
    global.kills = file_text_read_real(file);
    file_text_readln(file);
    
    file_text_close(file);
}
