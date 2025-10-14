extends Area2D

@export var level1 = "res://Scenes/level_1.tscn"
@export var level2 = "res://Scenes/level_2.tscn"
@export var level3 = "res://Scenes/level_3.tscn"
@export var level4 = "res://Scenes/level_4.tscn"
@export var level5 = "res://Scenes/level_5.tscn"

@export var level_final = "res://Scenes/level_final.tscn"

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Player"):
		var current_scene_path = get_tree().current_scene.scene_file_path

		if current_scene_path == level1:
			get_tree().change_scene_to_file(level2)
		elif current_scene_path == level2:
			get_tree().change_scene_to_file(level3)
		elif current_scene_path == level3:
			get_tree().change_scene_to_file(level4)
		elif current_scene_path == level4:
			get_tree().change_scene_to_file(level5)
		elif current_scene_path == level5:
			get_tree().change_scene_to_file(level_final)

	pass # Replace with function body.
