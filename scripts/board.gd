extends Node2D


func _draw() -> void:
	var border := Color("#b9bfc7")
	var guide := Color("#cbd0d6")
	draw_line(Vector2(407, 84), Vector2(407, 640), border, 1.0)
	draw_line(Vector2(756, 151), Vector2(756, 508), guide, 1.0)
	draw_line(Vector2(116, 508), Vector2(326, 508), border, 2.0)
	draw_line(Vector2(450, 508), Vector2(1200, 508), Color("#59616b"), 2.0)
	draw_dashed_line(Vector2(221, 215), Vector2(221, 402), guide, 1.0, 8.0)
	for x in [530, 673]:
		draw_dashed_line(Vector2(x, 190), Vector2(x, 508), guide, 1.0, 8.0)
