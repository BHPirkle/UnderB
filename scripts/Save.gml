/// Save(fname);
// Writes the save file? I think?
// I hope...

fname = argument0;

if (!file_exists(fname)) file_text_open_append(fname);

if (file_exists(fname)) {
    // Opens the file for reading and stores it in a variable.
    file = file_text_open_append(fname);
    
    // Writes username.
    file_text_write_string(file, global.username);
    file_text_writeln(file);
    
    // Writes the player's LOVE.
    file_text_write_string(file, global.love);
    file_text_writeln(file);
    
    // Writes the player's health.
    file_text_write_string(file, global.hp);
    file_text_writeln(file);
    
    // Writes the player's max health.
    file_text_write_string(file, global.maxHP);
    file_text_writeln(file);
    
    // Writes the player's attack.
    file_text_write_string(file, global.attack);
    file_text_writeln(file);
    
    // Writes the attack from equipped items.
    file_text_write_string(file, global.exAttack);
    file_text_writeln(file);
    
    // Writes the player's defence.
    file_text_write_string(file, global.defence);
    file_text_writeln(file);
    
    // Writes the defence from equipped items.
    file_text_write_string(file, global.exDefence);
    file_text_writeln(file);
    
    // Writes experience.
    file_text_write_string(file, global.xp);
    file_text_writeln(file);
    
    // Writes amount of gold.
    file_text_write_string(file, global.gold);
    file_text_writeln(file);
    
    // Writes the number of kills.
    file_text_write_string(file, global.kills);
    file_text_writeln(file);
    
    // Closes the file.
    file_text_close(file);
}
