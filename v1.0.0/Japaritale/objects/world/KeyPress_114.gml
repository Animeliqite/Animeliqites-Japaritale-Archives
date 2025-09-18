/*var scr = get_string("Type in the script name.","show_message");
var args = array_create(15,undefined);
for (var i = 0; i < 15; i++) {
	args[i] = get_integer("Type in the argument number "+string(i)+".",undefined);
}

script_execute_ext(asset_get_index(scr),args);