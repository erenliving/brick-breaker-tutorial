extends Node

var current_level = 1

var level_1 = [
	[0,0,0,0,0],
	[1,0,0,0,1],
	[1,1,0,1,1],
	[0,1,0,1,0]
]
var level_2 = [
	[5,5,5,5,5],
	[1,2,3,4,5],
	[0,1,2,3,0],
	[0,4,0,2,0]
]
var level_3 = [
	[5,5,5,5,5,5,5,5],
	[5,4,4,4,4,4,4,5],
	[0,0,5,3,3,5,0,0],
	[2,2,3,4,4,3,2,2],
	[1,1,1,1,1,1,1,1]
]
var levels = [level_1]

func get_current_level_definition():
	return levels[current_level - 1]
