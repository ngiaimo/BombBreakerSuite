///solve_normal_wires(wire_array, num_wires)
var wires_array = argument0;
var num_wires = argument1;
var solution = 0;

if (is_array(wires_array)) {
    //num_wires = array_length_1d(wires_array);
    
    switch (num_wires) {
        case 3: solution = solve_three_normal_wires(wires_array, num_wires);
        break;
        
        case 4: solution = solve_four_normal_wires(wires_array, num_wires);
        break;
        
        case 5: solution = solve_five_normal_wires(wires_array, num_wires);
        break;
        
        case 6: solution = solve_six_normal_wires(wires_array, num_wires);
        break;
        
        default:
            show_debug_message("Not enough or too many wires");
            break; 
    }
}

return solution;
