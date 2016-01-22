///scr_solve_password(let_array_1, let_array_2, let_array_3, let_array_4, let_array_5)
password_word_map = ds_map_create();
ds_map_add(password_word_map, "about", 0);
ds_map_add(password_word_map, "after", 0);
ds_map_add(password_word_map, "again", 0);
ds_map_add(password_word_map, "below", 0);
ds_map_add(password_word_map, "could", 0);
ds_map_add(password_word_map, "every", 0);
ds_map_add(password_word_map, "first", 0);
ds_map_add(password_word_map, "found", 0);
ds_map_add(password_word_map, "great", 0);
ds_map_add(password_word_map, "house", 0);
ds_map_add(password_word_map, "large", 0);
ds_map_add(password_word_map, "learn", 0);
ds_map_add(password_word_map, "never", 0);
ds_map_add(password_word_map, "other", 0);
ds_map_add(password_word_map, "place", 0);
ds_map_add(password_word_map, "plant", 0);
ds_map_add(password_word_map, "point", 0);
ds_map_add(password_word_map, "right", 0);
ds_map_add(password_word_map, "small", 0);
ds_map_add(password_word_map, "sound", 0);
ds_map_add(password_word_map, "spell", 0);
ds_map_add(password_word_map, "still", 0);
ds_map_add(password_word_map, "study", 0);
ds_map_add(password_word_map, "their", 0);
ds_map_add(password_word_map, "there", 0);
ds_map_add(password_word_map, "these", 0);
ds_map_add(password_word_map, "thing", 0);
ds_map_add(password_word_map, "think", 0);
ds_map_add(password_word_map, "three", 0);
ds_map_add(password_word_map, "water", 0);
ds_map_add(password_word_map, "where", 0);
ds_map_add(password_word_map, "which", 0);
ds_map_add(password_word_map, "world", 0);
ds_map_add(password_word_map, "would", 0);
ds_map_add(password_word_map, "write", 0);

var let_1 = argument0;
var let_2 = argument1;
var let_3 = argument2;
var let_4 = argument3;
var let_5 = argument4;
var let_num;
var map_ele = ds_map_find_first(password_word_map);
var let_ele;
var letter;
var value;

// Check for possible words with first letter, then cull the map of words with 0 score
if(!ds_map_empty(let_1)) {
    let_num = 1;
    let_ele = ds_map_find_first(let_1);
    
    while(!(is_undefined(let_ele))) {
    
        letter = ds_map_find_value(let_1, let_ele);
        
        while(!is_undefined(map_ele)) {
            if(string_char_at(map_ele, let_num) == letter){
                value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, value+1);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        map_ele = ds_map_find_first(password_word_map);
        let_ele = ds_map_find_next(let_1, let_ele);
    }
    
    password_word_map = cull_map_zero_values(password_word_map);
    let_num++;
}

// =======================================================================================
//Second Letter
if(!ds_map_empty(password_word_map) && !ds_map_empty(let_2)) {
    let_num = 2;
    map_ele = ds_map_find_first(password_word_map);
    let_ele = ds_map_find_first(let_2);
    while(!is_undefined(let_ele)) {
        letter = ds_map_find_value(let_2, let_ele);
        while(!is_undefined(map_ele)) {
            if(string_char_at(map_ele, let_num) == letter){
                value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, value+1);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        let_ele = ds_map_find_next(let_2, let_ele);
        map_ele = ds_map_find_first(password_word_map);
    }
    
    password_word_map = cull_map_zero_values(password_word_map);
}

// =======================================================================================
// Third Letter
if(!ds_map_empty(password_word_map) && !ds_map_empty(let_3)) {
    let_num = 3;
    map_ele = ds_map_find_first(password_word_map);
    let_ele = ds_map_find_first(let_3);
    while(!is_undefined(let_ele)) {
        letter = ds_map_find_value(let_3, let_ele);
        while(!is_undefined(map_ele)) {
            if(string_char_at(map_ele, let_num) == letter){
                value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, value+1);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        let_ele = ds_map_find_next(let_3, let_ele);
        map_ele = ds_map_find_first(password_word_map);
    }
    
    password_word_map = cull_map_zero_values(password_word_map);
}

// =======================================================================================
// Fourth Letter
if(!ds_map_empty(password_word_map) && !ds_map_empty(let_4)) {
    let_num = 4;
    map_ele = ds_map_find_first(password_word_map);
    let_ele = ds_map_find_first(let_4);
    while(!is_undefined(let_ele)) {
        letter = ds_map_find_value(let_4, let_ele);
        while(!is_undefined(map_ele)) {
            if(string_char_at(map_ele, let_num) == letter){
                value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, value+1);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        let_ele = ds_map_find_next(let_4, let_ele);
        map_ele = ds_map_find_first(password_word_map);
    }
    
    password_word_map = cull_map_zero_values(password_word_map);
}

// =======================================================================================
// Fifth Letter
if(!ds_map_empty(password_word_map) && !ds_map_empty(let_5)) {
    let_num = 5;
    map_ele = ds_map_find_first(password_word_map);
    let_ele = ds_map_find_first(let_5);
    while(!is_undefined(let_ele)) {
        letter = ds_map_find_value(let_5, let_ele);
        while(!is_undefined(map_ele)) {
            if(string_char_at(map_ele, let_num) == letter){
                value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, value+1);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        let_ele = ds_map_find_next(let_5, let_ele);
        map_ele = ds_map_find_first(password_word_map);
    }
    
    password_word_map = cull_map_zero_values(password_word_map);
}
// =======================================================================================

return password_word_map;

