///scr_add_letter(column, id, letter)
var column = argument0;
var box_id = argument1;
var letter = argument2;

if(object_exists(obj_password_word_box)) {
    with(obj_password_word_box) {
        new_key = true;
        switch(column) {
            case 1:
                if(scr_find_key(letter_1, box_id)) {
                    ds_map_replace(letter_1, box_id, letter);
                } else {
                    ds_map_add(letter_1, box_id, letter);
                }
            break;
            
            case 2:
                if(scr_find_key(letter_2, box_id)) {
                        ds_map_replace(letter_2, box_id, letter);
                    } else {
                        ds_map_add(letter_2, box_id, letter);
                    }
            break;
            
            case 3:
                if(scr_find_key(letter_3, box_id)) {
                        ds_map_replace(letter_3, box_id, letter);
                    } else {
                        ds_map_add(letter_3, box_id, letter);
                    }
            break;
            
            case 4:
                if(scr_find_key(letter_4, box_id)) {
                        ds_map_replace(letter_4, box_id, letter);
                    } else {
                        ds_map_add(letter_4, box_id, letter);
                    }
            break;
            
            case 5:
                if(scr_find_key(letter_5, box_id)) {
                        ds_map_replace(letter_5, box_id, letter);
                    } else {
                        ds_map_add(letter_5, box_id, letter);
                    }
            break;
            
            default:
            break;
        }
    }
}
