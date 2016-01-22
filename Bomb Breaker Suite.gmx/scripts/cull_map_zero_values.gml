///cull_map_zero_values(map)
var word_map = argument0;

var map_ele = ds_map_find_first(word_map);
while(!is_undefined(map_ele)) {
    var temp_ele = map_ele;
    var value = word_map[? map_ele];
    map_ele = ds_map_find_next(word_map, map_ele);
    if(value == 0) {
        ds_map_delete(word_map, temp_ele);
    } else {
        ds_map_replace(word_map, temp_ele, 0);
    }
}

return word_map;
