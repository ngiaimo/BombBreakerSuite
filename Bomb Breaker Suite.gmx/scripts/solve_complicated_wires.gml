///solve_complicated_wires(color, star, led)
wire_color = argument0;
star = argument1;
led = argument2;
solution = noone;

switch(color) {
    case "white":
        solution = solve_white_complicated_wire(star, led);
    break;
    
    case "red":
        solution = solve_red_complicated_wire(star, led);
    break;
    
    case "blue":
        solution = solve_blue_complicated_wire(star, led);
    break;
    
    case "redblue":
        solution = solve_redblue_complicated_wire(star, led);
    break;
    
    default:
    break;
}

return solution;
