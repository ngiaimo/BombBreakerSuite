///solve_needy_knob(top_row_array, bottom_row_array)
top_row = argument0;
bottom_row = argument1;

pairs = find_pairs(top_row, bottom_row);

switch (pairs) {
    case 35:
    case 36:
        return "UP";
    break;
    
    case 0:
    case 236:
        return "DOWN";
    break;
    
    case 5:
        return "LEFT";
    break;
    
    case 135:
    case 13:
        return "RIGHT";
    break;
    
    default:
    break;
}
