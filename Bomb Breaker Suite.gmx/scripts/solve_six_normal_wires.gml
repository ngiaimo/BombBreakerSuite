///solve_six_normal_wires(wires_array, num_wires)

var wires_array = argument0;
var num_wires = argument1;
var num_red_wires = 0;
var num_yellow_wires = 0;
var num_white_wires = 0;

if (is_array(wires_array)) {
    
    if (num_wires == 6) {
        for (var w = 0; w < num_wires; w++) {
            if (wires_array[w] == "red") {
                num_red_wires++;
            }
            
            if (wires_array[w] == "yellow") {
                num_yellow_wires++;
            }
            
            if (wires_array[w] == "white") {
                num_white_wires++;
            }
        }
    } else {
        return 0;
    }
} else {
    return 0;
}

if (num_yellow_wires == 0 && global.serial_odd) {
    return 3;
}

if (num_yellow_wires == 1 && num_white_wires > 1) {
    return 4;
}

if (num_red_wires == 0) {
    return num_wires;
}

return 4;
