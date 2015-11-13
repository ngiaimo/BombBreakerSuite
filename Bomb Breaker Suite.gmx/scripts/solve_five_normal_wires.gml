///solve_five_normal_wires(wires_array, num_wires)

var wires_array = argument0;
var num_wires = argument1;
var num_red_wires = 0;
var num_yellow_wires = 0;
var num_black_wires = 0;

if (is_array(wires_array)) {
    
    if (num_wires == 5) {
        for (var w = 0; w < num_wires; w++) {
            if (wires_array[w] == "red") {
                num_red_wires++;
            }
            
            if (wires_array[w] == "yellow") {
                num_yellow_wires++;
            }
            
            if (wires_array[w] == "black") {
                num_black_wires++;
            }
        }
    } else {
        return 0;
    }
} else {
    return 0;
}

if (wires_array[num_wires-1] == "black" && global.serial_odd) {
    return 4;
}

if (num_red_wires == 1 && num_yellow_wires > 1) {
    return 1;
}

if (num_black_wires == 0) {
    return 2;
}

return 1;
