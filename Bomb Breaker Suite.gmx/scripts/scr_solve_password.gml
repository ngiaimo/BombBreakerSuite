///scr_solve_password(let_array_1, let_array_2, let_array_3, let_array_4, let_array_5)
password_word_array[0] = "about";
password_word_array[1] = "after";
password_word_array[2] = "again";
password_word_array[3] = "below";
password_word_array[4] = "could";
password_word_array[5] = "every";
password_word_array[6] = "first";
password_word_array[7] = "found";
password_word_array[8] = "great";
password_word_array[9] = "house";
password_word_array[10] = "large";
password_word_array[11] = "learn";
password_word_array[12] = "never";
password_word_array[13] = "other";
password_word_array[14] = "place";
password_word_array[15] = "plant";
password_word_array[16] = "point";
password_word_array[17] = "right";
password_word_array[18] = "small";
password_word_array[19] = "sound";
password_word_array[20] = "spell";
password_word_array[21] = "still";
password_word_array[22] = "study";
password_word_array[23] = "their";
password_word_array[24] = "there";
password_word_array[25] = "these";
password_word_array[26] = "thing";
password_word_array[27] = "think";
password_word_array[28] = "three";
password_word_array[29] = "water";
password_word_array[30] = "where";
password_word_array[31] = "which";
password_word_array[32] = "world";
password_word_array[33] = "would";
password_word_array[34] = "write";

var let_1 = argument0;
var let_2 = argument1;
var let_3 = argument2;
var let_4 = argument3;
var let_5 = argument4;

num_possible_words = 0;
possible_words[0] = noone;

for(var i = 0; i < array_length_1d(password_word_array); i++) {
    // First word to check
    var word_1 = password_word_array[i];
    
    // First letter of that word
    var letter = string_char_at(word_1, 0);
        
    for (var l = 0; l < array_length_1d(let_1); l++) {
            if(letter == let_1[l]) {
                possible_words[num_possible_words] = word_1;
                num_possible_words++;
                break;
            }
        }
}

return possible_words;
