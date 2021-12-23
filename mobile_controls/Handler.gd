extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.get_name() == "Android":
		OS.request_permissions()
		for i in get_children():
			if get_tree().current_scene.name == "PlayState" or get_tree().current_scene.name == "Freeplay":
				i.action = i.name
			i.visible = true
