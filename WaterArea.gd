extends WaterArea

onready var node = get_node("..")


func _get_water_heights(positions):
	var ret = []
	for p in positions:
		var pos = node.get_water_height(p)
		ret.append(pos)
	return ret


func _get_water_flow(positions):
	var ret = []
	for p in positions:
		var pos = node.get_water_flow(p)
		ret.append(pos)
	return ret
