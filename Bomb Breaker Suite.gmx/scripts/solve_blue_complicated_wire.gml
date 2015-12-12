///solve_blue_complicated_wire(star, led)
star = argument0;
led = argument1;

// Has just an LED or both LED and star: if bomb has a parallel port CUT else don't cut
if (led) {
    if (global.parallel_port) {
        return CUT;
    } else {
        return DONTCUT;
    }
}

// No LED or star and has an even serial number: cut
if (!star) {
    if (!global.serial_odd) {
        return CUT;
    } else {
        return DONTCUT;
    }
} else {
    // Only has a star
    return DONTCUT;
}
