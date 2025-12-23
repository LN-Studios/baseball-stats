class_name SceneHandler extends Object

const SCENE_PATH = "res://scene/%s.tscn"

var max_history_length = 10
var scene_history = []
var root: Control

func _init(rt, history_length = max_history_length):
	root = rt
	max_history_length = history_length
	Signals.set_scene.connect(set_scene)

## sets scene to `sc` scene. if `sc` is empty, goes back a scene
func set_scene(sc: String):
	if (sc == scene_history.back()): return
	if (sc):
		scene_history.append(sc)
		var new_scene = load(SCENE_PATH % sc)
		root.set_scene(new_scene.instantiate(), sc)
		if (scene_history.size() > max_history_length): scene_history.pop_front()
	elif(scene_history.size() > 1):
		scene_history.pop_back()
		#emit_scene(scene_history.pop_back())
	else:
		print("ran out of scenes to go back to :/")
