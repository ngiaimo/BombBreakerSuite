///check_array(array, key_1, key_2, key_3, key_4)

// Column to check
var col = argument0;

// Save keys from arguments
var key_1 = argument1;
var key_2 = argument2;
var key_3 = argument3;
var key_4 = argument4;

// Number of keys in the current column found
var keys_found = 0;

// Order in the column in which the symbols are found
var found_order = ds_queue_create();

// Check column
if (is_array(col)) {
    for (var c = 0; c < array_length_1d(col); c++) { 
        if (col[c] == key_1 || col[c] == key_2 || col[c] == key_3 || col[c] == key_4) {
            keys_found++;
            ds_queue_enqueue(found_order, col[c]);
            
            if (keys_found == 4) {
                return found_order;
            }
        }
    }
} else {
    return found_order;
}

ds_queue_clear(found_order);
return found_order;

