///solve_three_normal_wires(wires_array, num_wires)

var wires_array = argument0;
var num_wires = argument1;
var num_blue_wires = 0;
var last_pos_blue_wire = 0;
var red_wire_exists = false;
var white_wire_exists = false;

if (is_array(wires_array)) {
    
    if (num_wires == 3) {
        for (var w = 0; w < num_wires; w++) {
            if (wires_array[w] == "red") {
                red_wire_exists = true;
            }
            
            if (wires_array[w] == "white") {
                white_wire_exists = true;
            }
            
            if (wires_array[w] == "blue") {
                num_blue_wires++;
                last_pos_blue_wire = w;
            }
        }
    } else {
        return 0;
    }
} else {
    return 0;
}

if (!red_wire_exists) {
    return 2;
}

if (white_wire_exists && wires_array[num_wires-1] == "white") {
    return 3;
}

if (num_blue_wires > 1) {
    return last_pos_blue_wire+1;
}

return 3;
