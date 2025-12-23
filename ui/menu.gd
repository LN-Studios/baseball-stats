class_name Menu extends Control

var scene_name = "DEFAULT SCENE NAME"

func set_scene(scene = scene_name):
	Signals.emit(scene)
	
