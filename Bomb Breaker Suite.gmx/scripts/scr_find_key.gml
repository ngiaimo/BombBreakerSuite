///scr_find_key(map, key)
var map = argument0;
var key = argument1;

var map_ele = ds_map_find_first(map);
while(!is_undefined(map_ele)) {
    if(map_ele == key){
       return true; 
    }
    
    map_ele = ds_map_find_next(map, map_ele);
}

return false;
