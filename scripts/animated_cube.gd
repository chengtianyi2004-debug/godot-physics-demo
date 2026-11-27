extends Node2D

var running := true
var elapsed := 0.0
@onready var start_position := position


func _process(delta: float) -> void:
	if running:
		elapsed += delta
		position.y = start_position.y + sin(elapsed * 2.1) * 75.0
		rotation = elapsed * 1.25


func _draw() -> void:
	var square := Rect2(-34, -34, 68, 68)
	draw_rect(square, Color("#4d79a7"))
	draw_rect(square, Color("#315373"), false, 1.5)
