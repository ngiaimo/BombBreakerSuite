///solve_red_complicated_wire(star, led)
star = argument0;
led = argument1;

// Has just an LED or both LED and star: if batteries >= 2 cut else don't cut
if (led) {
    if (global.batteries >= 2) {
        return CUT;
    } else {
        return DONTCUT;
    }
}

// No LED or star and has an even serial number
if (!star) {
    if (!global.serial_odd) {
        return CUT;
    } else {
        return DONTCUT;
    }
} else {
    // Only has star
    return CUT;
}
