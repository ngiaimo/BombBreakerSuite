///scr_display_map(map)
var map = argument0;
var map_ele = ds_map_find_first(map);
var out = "";

while(!is_undefined(map_ele)) {
    out = string(map_ele) + ":" + string(map[? map_ele]);
    map_ele = ds_map_find_next(map, map_ele);
    show_debug_message(out);
}
