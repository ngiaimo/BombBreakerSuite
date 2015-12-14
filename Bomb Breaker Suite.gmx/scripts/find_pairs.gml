///find_pairs(top_array, bottom_array)
top_row = argument0;
bottom_row = argument1;
top_size = array_length_1d(top_row);
bot_size = array_length_1d(bottom_row);
pairs = "";

for (var t = 0; t < top_size; t++) {
    if(t < bot_size) {
        if(top_row[t] && bottom_row[t]) {
            pairs += string(t+1);
        }
    }
}

if (pairs == "") {
    pairs = "0";
}

return real(pairs);
