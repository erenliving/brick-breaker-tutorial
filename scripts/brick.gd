extends RigidBody2D


class_name Brick

signal brick_destroyed

var level = 1

@onready var sprite_2d = $Sprite2D
@onready var collision_shape_2d = $CollisionShape2D

var sprites: Array[Texture2D] = [
	preload("res://assets/brick-blue.png"),
	preload("res://assets/brick-gray.png"),
	preload("res://assets/brick-green.png"),
	preload("res://assets/brick-orange.png"),
	preload("res://assets/brick-red.png"),
	preload("res://assets/brick-yellow.png"),
]

func get_size():
	return collision_shape_2d.shape.get_rect().size

func get_width():
	return get_size().x

func set_level(new_level: int):
	level = new_level
	sprite_2d.texture = sprites[new_level - 1]

func decrease_level():
	if level > 1:
		set_level(level - 1)
	else:
		fade_out()

func fade_out():
	collision_shape_2d.disabled = true
	var tween = get_tree().create_tween()
	tween.tween_property(sprite_2d, "modulate", Color.TRANSPARENT, .5)
	tween.tween_callback(destroy)

func destroy():
	queue_free()
	brick_destroyed.emit()
