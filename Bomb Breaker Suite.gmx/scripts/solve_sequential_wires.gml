///solve_sequential_wires(wire_color, color_occurance, connected_letter)
wire_color = argument0;
color_occurance = argument1;
connected_letter = argument2;
solution = BLANK;

switch (wire_color) {
    case "red":
        solution = solve_red_sequential_wire(color_occurance, connected_letter);
    break;
    
    case "blue":
        solution = solve_blue_sequential_wire(color_occurance, connected_letter);
    break;
    
    case "black":
        solution = solve_black_sequential_wire(color_occurance, connected_letter);
    break;
    
    default:
    break;
}

return solution;
