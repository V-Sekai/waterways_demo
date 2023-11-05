extends WaterArea

onready var node = get_node("..")
onready var river = get_node("../River")


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
		var unit_conv = 10.0
		pos = pos * river.mat_flow_speed * unit_conv
		ret.append(pos)
	return ret
