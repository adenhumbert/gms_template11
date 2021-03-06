/// @description Create a Checkbox data

/// @param {real} startcheck?
/// @param {real} style
/// @param {real} x
/// @param {real} y
/// @param {string} text
/// @param {real} w
/// @param {real} h
/// @param {real} updated
var Mw,Mh;
if !variable_instance_exists(id,"_widget_checkbox_count")
{
	show_debug_message("SEMIERROR : Checkbox data not initial yet.")
	exit;
}
Mw = ds_grid_width(_widget_checkbox_state)
Mh = ds_grid_height(_widget_checkbox_state)
ds_grid_resize(_widget_checkbox_state,Mw,Mh+1)
ds_grid_add(_widget_checkbox_state, 0, _widget_checkbox_count ,_widget_checkbox_count)
ds_grid_add(_widget_checkbox_state, 1, _widget_checkbox_count ,argument0)
ds_grid_add(_widget_checkbox_state, 2, _widget_checkbox_count ,argument1)
ds_grid_add(_widget_checkbox_state, 3, _widget_checkbox_count ,argument2)
ds_grid_add(_widget_checkbox_state, 4, _widget_checkbox_count ,argument3)
ds_grid_add(_widget_checkbox_state, 5, _widget_checkbox_count ,argument4)
ds_grid_add(_widget_checkbox_state, 6, _widget_checkbox_count ,argument5)
ds_grid_add(_widget_checkbox_state, 7, _widget_checkbox_count ,argument6)
ds_grid_add(_widget_checkbox_state, 8, _widget_checkbox_count ,argument7)
ds_grid_add(_widget_checkbox_state, 9, _widget_checkbox_count ,false)
ds_grid_add(_widget_checkbox_state, 10, _widget_checkbox_count ,false)

for(var dolp=0;dolp<=7;dolp++)
{
	if argument[dolp] = "?def?"
	{
		ds_grid_set(_widget_checkbox_state,dolp+1,_widget_checkbox_count,_widget_checkbox_default[dolp+1])
	}
}

show_debug_message(">> Checkbox Created (\""+string(_widget_checkbox_count)+"\") ["+string(_widget_checkbox_state[# 1, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 2, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 3, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 4, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 5, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 6, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 7, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 8, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 9, _widget_checkbox_count])+"] ["+string(_widget_checkbox_state[# 10, _widget_checkbox_count])+"];")
_widget_checkbox_count+=1
return _widget_checkbox_count-1