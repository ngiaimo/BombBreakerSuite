///solve_keypad(key_1, key_2, key_3, key_4)

// Save keys from arguments
var key_1 = argument0;
var key_2 = argument1;
var key_3 = argument2;
var key_4 = argument3;

var solution_order = ds_list_create();

//show_debug_message(string(key_1) + " " +string(key_2) + " " + string(key_3) + " " + string(key_4));

// Column 1
var col_1;
col_1[0] = spr_o;
col_1[1] = spr_a_t;
col_1[2] = spr_lambda;
col_1[3] = spr_bolt;
col_1[4] = spr_t_tripod;
col_1[5] = spr_droopy_h;
col_1[6] = spr_backward_c_dot;

// Column 2
var col_2;
col_2[0] = spr_backward_3;
col_2[1] = spr_o;
col_2[2] = spr_backward_c_dot;
col_2[3] = spr_curly;
col_2[4] = spr_empty_star;
col_2[5] = spr_droopy_h;
col_2[6] = spr_upside_question;

// Column 3
var col_3;
col_3[0] = spr_copyright;
col_3[1] = spr_sack;
col_3[2] = spr_curly;
col_3[3] = spr_x_i;
col_3[4] = spr_droopy_r;
col_3[5] = spr_lambda;
col_3[6] = spr_empty_star;

// Column 4
var col_4;
col_4[0] = spr_weird_6;
col_4[1] = spr_paragraph;
col_4[2] = spr_b_t;
col_4[3] = spr_t_tripod;
col_4[4] = spr_x_i;
col_4[5] = spr_upside_question;
col_4[6] = spr_smiley;

// Column 5
var col_5;
col_5[0] = spr_trident;
col_5[1] = spr_smiley;
col_5[2] = spr_b_t;
col_5[3] = spr_right_c_dot;
col_5[4] = spr_paragraph;
col_5[5] = spr_alien_3;
col_5[6] = spr_black_star;

// Column 6
var col_6;
col_6[0] = spr_weird_6;
col_6[1] = spr_backward_3;
col_6[2] = spr_rail_track;
col_6[3] = spr_a_e;
col_6[4] = spr_trident;
col_6[5] = spr_weird_h;
col_6[6] = spr_omega;

// Array of column arrays to help looping
var col_list;
col_list[0] = col_1;
col_list[1] = col_2;
col_list[2] = col_3;
col_list[3] = col_4;
col_list[4] = col_5;
col_list[5] = col_6;

// The index in the col_list to check
var col_num = 0;

// The order the keys must be pushed
var found_order = ds_queue_create();

// Keeps checking to see if the found_order is empty or not and if it is, go to the next column
while (ds_queue_empty(found_order) && col_num < array_length_1d(col_list)) {
    ds_queue_copy(found_order, check_array(col_list[col_num], key_1, key_2, key_3, key_4));
    col_num++;
}


// Create the list to display click order
var click_order = "";
if (!ds_queue_empty(found_order)) {
    while (!ds_queue_empty(found_order)) {
        //click_order += (sprite_get_name(ds_queue_dequeue(found_order)) + " ");
        ds_list_add(solution_order, (ds_queue_dequeue(found_order)));
    }
} else {
    //click_order = "Incorrect symbols provided!"
    show_debug_message("Incorrect symbols provided");
    ds_queue_destroy(found_order);
    return solution_order;
}

//show_message(click_order);

ds_queue_destroy(found_order);

return solution_order;
