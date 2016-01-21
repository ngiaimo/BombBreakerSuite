///scr_goto_next_letter_object(letter_id)
var let_id = argument0;
keyboard_lastkey = -1;
let_id++;

with(obj_password_letter) {
    if(letter_id == let_id) {
        active = true;
    } else {
        active = false;
    }
}
