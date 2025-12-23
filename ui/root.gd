extends Control

var scene_handler: SceneHandler

var Scene = {
	MainMenu = "main_menu",
}

func _ready():
	scene_handler = SceneHandler.new(self)
	scene_handler.set_scene(Scene.MainMenu)

func set_scene(scene: Variant, sc_name: String):
	if (get_child_count() > 0):
		get_child(0).queue_free()
	add_child(scene)
	move_child(scene, 0)
	scene.size_flags_vertical = SIZE_EXPAND_FILL
	scene.scene_name = sc_name
