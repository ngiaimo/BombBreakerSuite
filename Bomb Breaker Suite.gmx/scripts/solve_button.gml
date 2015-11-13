///solve_button(button_text, button_color, button_strip)

var button_text = argument0;
var button_color = argument1;
var button_strip = argument2;

if (button_color == "blue" && button_text == "Abort") {
    return check_strip(button_strip);
}

if (global.batteries > 1 && button_text == "Detonate") {
    return "Release Immediately";
}

if (button_color == "white" && global.lit_car) {
    return check_strip(button_strip);
}

if (global.batteries > 2 and global.lit_frk) {
    return "Release Immediately";
}

if (button_color == "red" && button_text == "Hold") {
    return "Release Immediately";
}

return check_strip(button_strip);
