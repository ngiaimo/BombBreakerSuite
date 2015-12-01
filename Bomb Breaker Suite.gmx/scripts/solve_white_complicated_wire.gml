///solve_white_complicated_wire(star, led)
star = argument0;
led = argument1;

// Both LED and star: if batteries >= 2 cut else don't cut
if (star && led) {
    if (global.batteries >= 2) {
        return "CUT";
    } else {
        return "DON'T CUT";
    }
}

// No LED or Star, OR just star: cut
if ((!star && !led) || (star && !led)) {
    return "CUT"
}

// Only has LED
return "DON'T CUT";
