// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tile_meeting_precise(){
	function tile_meeting_precise(_xPos, _yPos, _layer) {
	///@description tile_meeting_precise(x,y,layer)
///@param x
///@param y
///@param layer
	//var _layer = argument3,
	    _tm = layer_tilemap_get_id(_layer);
 
	if(!instance_exists(obj_tile_wall)) instance_create_depth(0,0,0,obj_tile_wall);   
 
	if(_tm == -1 || layer_get_element_type(_tm) != layerelementtype_tilemap) {
	  show_debug_message("Checking collision for non existent layer / tilemap") 
	  return false;
	}
 
	var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (argument0 - x), y),
	    _y1 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_top + (argument1 - y)),
	    _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (argument0 - x), y),
	    _y2 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_bottom + (argument1 - y));
 
	for(var _x = _x1; _x <= _x2; _x++){
	  for(var _y = _y1; _y <= _y2; _y++){
	    var _tile = tilemap_get(_tm, _x, _y);
	    if(_tile){
	      if(_tile == 1) return true;
 
	      obj_tile_wall.x = _x * tilemap_get_tile_width(_tm);
	      obj_tile_wall.y = _y * tilemap_get_tile_height(_tm);
	      obj_tile_wall.image_index = _tile;
 
	      if(place_meeting(argument0,argument1,obj_tile_wall))
	        return true;
	    }
	  }
	}
 
	return false;
	}

}