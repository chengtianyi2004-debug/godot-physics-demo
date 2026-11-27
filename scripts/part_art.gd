extends Node2D

@export var radius := 26.0
@export var color := Color("#389273")
@export var crate := false


func _draw() -> void:
	var outline := color.darkened(0.28)
	if crate:
		draw_rect(Rect2(-21, -21, 42, 42), color)
		draw_rect(Rect2(-21, -21, 42, 42), outline, false, 1.5)
	else:
		draw_circle(Vector2.ZERO, radius, color, true, -1.0, true)
		draw_circle(Vector2.ZERO, radius, outline, false, 1.5, true)
