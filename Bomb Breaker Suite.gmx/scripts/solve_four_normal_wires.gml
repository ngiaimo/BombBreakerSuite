///solve_four_normal_wires(wires_array, num_wires)

var wires_array = argument0;
var num_wires = argument1;
var num_blue_wires = 0;
var num_red_wires = 0;
var last_pos_red_wire = 0;
var num_yellow_wires = 0;

if (is_array(wires_array)) {
    
    if (num_wires == 4) {
        for (var w = 0; w < num_wires; w++) {
            if (wires_array[w] == "red") {
                num_red_wires++;
                last_pos_red_wire = w;
            }
            
            if (wires_array[w] == "yellow") {
                num_yellow_wires++;
            }
            
            if (wires_array[w] == "blue") {
                num_blue_wires++;
            }
        }
    } else {
        return 0;
    }
} else {
    return 0;
}

if (num_red_wires > 1 && global.serial_odd) {
    return last_pos_red_wire+1;
}

if (num_red_wires == 0 && wires_array[num_wires-1] == "yellow") {
    return 1;
}

if (num_blue_wires == 1) {
    return 1;
}

if (num_yellow_wires > 1) {
    return num_wires;
}

return 2;
