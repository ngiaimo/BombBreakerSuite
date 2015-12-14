///solve_blue_sequential_wire(wire_occurance, connected_letter)
wire_occurance = argument0;
connected_letter = argument1;

if (connected_letter == "A") {
    if (wire_occurance == 2 || wire_occurance == 4 || wire_occurance == 8 || wire_occurance == 9) {
        return CUT;
    }
}

if (connected_letter == "B") {
    if (wire_occurance == 1 || wire_occurance == 3 || wire_occurance == 5 || wire_occurance == 6) {
        return CUT;
    }
}

if (connected_letter == "C") {
    if (wire_occurance == 2 || wire_occurance == 6 || wire_occurance == 7 || wire_occurance == 8) {
        return CUT;
    }
}

return DONTCUT;
