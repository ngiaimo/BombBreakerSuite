///solve_redblue_complicated_wire(star, led)
star = argument0;
led = argument1;

// Has neither star or LED OR has just LED AND the serial number is even
if ((!star && !led) || (led && !star)) {
    if (!global.serial_odd) {
        return CUT;
    } else {
        return DONTCUT;
    }
}

// Has just star and a parallel port
if (star && !led) {
    if (global.parallel_port) {
        return CUT;
    } else {
        return DONTCUT;
    }
}

// Has both LED and star
return DONTCUT;
