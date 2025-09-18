block_enabled=true;
pushSoulEnabled=false;
pushSoulDirection=DIR.DOWN;
pushPlayerEnabled=false;
pushPlayerDirection=DIR.DOWN;
_block_id="";

_destroy = function (_inst_id) {
	if(_block_id==_inst_id)
		instance_destroy();
}

_solid = function (_inst_id,_enabled) {
	if(_block_id==_inst_id)
		block_enabled=_enabled;
}