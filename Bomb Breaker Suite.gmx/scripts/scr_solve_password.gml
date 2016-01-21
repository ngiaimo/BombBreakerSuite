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
var let_num = 1;


// Check for possible words with first letter, then cull the map of words with 0 score
if(ds_list_size(let_1) > 0) {
    var map_ele = ds_map_find_first(password_word_map);
    
    for(var l1 = 0; l1 < ds_list_size(let_1); l1++) {
        
        var letter = ds_list_find_value(let_1, l1);
        
        while(is_string(map_ele)) {
            if(string_char_at(map_ele, let_num) == letter){
                var value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, ++value);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        map_ele = ds_map_find_first(password_word_map);
    }
}

password_word_map = cull_map_zero_values(password_word_map);
let_num++;

// =======================================================================================

// Check if map is size 1, if so it is solved and skip rest of the letters
if(ds_map_size(password_word_map) != 1 && ds_list_size(let_2) > 0) {
    // Check for possible words with the second letter, then cull the map of words with 0 score
    map_ele = ds_map_find_first(password_word_map);
    
    for(var l2 = 0; l2 < ds_list_size(let_2); l2++) {
    
        var letter = ds_list_find_value(let_2, l2);
        
        while(is_string(map_ele)) {
            //show_debug_message("Word is: " + map_ele + " letter is " + letter + " let_num is " + string(let_num) + " string_char_at returns " + string_char_at(map_ele, let_num));
            if(string_char_at(map_ele, let_num) == letter){
                var value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, ++value);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        map_ele = ds_map_find_first(password_word_map);
    }
} else {
    return password_word_map;
}

password_word_map = cull_map_zero_values(password_word_map);
let_num++;

// =======================================================================================

// Check if map is size 1, if so it is solved and skip rest of the letters
if(ds_map_size(password_word_map) != 1 && ds_list_size(let_3) > 0) {
    // Check for possible words with the third letter, then cull the map of words with 0 score
    map_ele = ds_map_find_first(password_word_map);
    
    for(var l3 = 0; l3 < ds_list_size(let_3); l3++) {
    
        var letter = ds_list_find_value(let_3, l3);
        
        while(is_string(map_ele)) {
            //show_debug_message("Word is: " + map_ele + " letter is " + letter + " let_num is " + string(let_num) + " string_char_at returns " + string_char_at(map_ele, let_num));
            if(string_char_at(map_ele, let_num) == letter){
                var value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, ++value);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        map_ele = ds_map_find_first(password_word_map);
    }
} else {
    return password_word_map;
}

password_word_map = cull_map_zero_values(password_word_map);
let_num++;

// =======================================================================================

// Check if map is size 1, if so it is solved and skip rest of the letters
if(ds_map_size(password_word_map) != 1 && ds_list_size(let_4) > 0) {
    // Check for possible words with the 4th letter, then cull the map of words with 0 score
    map_ele = ds_map_find_first(password_word_map);
    
    for(var l4 = 0; l4 < ds_list_size(let_4); l4++) {
    
        var letter = ds_list_find_value(let_4, l4);
        
        while(is_string(map_ele)) {
            //show_debug_message("Word is: " + map_ele + " letter is " + letter + " let_num is " + string(let_num) + " string_char_at returns " + string_char_at(map_ele, let_num));
            if(string_char_at(map_ele, let_num) == letter){
                var value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, ++value);
            }
            
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
        
        map_ele = ds_map_find_first(password_word_map);
    }
} else {
    return password_word_map;
}

password_word_map = cull_map_zero_values(password_word_map);
let_num++;

// =======================================================================================

// Check if map is size 1, if so it is solved and skip rest of the letters

    // Check for possible words with the 5th letter, then cull the map of words with 0 score
map_ele = ds_map_find_first(password_word_map);

if (ds_list_size(let_5) > 0) {   
    for(var l5 = 0; l5 < ds_list_size(let_5); l5++) {
        
        var letter = ds_list_find_value(let_5, l5);
            
        while(is_string(map_ele)) {
        //show_debug_message("Word is: " + map_ele + " letter is " + letter + " let_num is " + string(let_num) + " string_char_at returns " + string_char_at(map_ele, let_num));
            if(string_char_at(map_ele, let_num) == letter){
                var value = password_word_map[? map_ele];
                ds_map_replace(password_word_map, map_ele, ++value);
            }
                
            map_ele = ds_map_find_next(password_word_map, map_ele);
        }
            
            map_ele = ds_map_find_first(password_word_map);
    }
}

// =======================================================================================

return password_word_map;

