extends Button

@export var symbol := "play"

func _draw() -> void:
	var center := size * 0.5
	var fill := Color("#fafbfc")
	var ink := Color("#3b424a")
	if disabled:
		fill = Color("#e6e8ea")
		ink = Color("#858b93")
	elif is_hovered() or button_pressed:
		fill = Color("#d8dfe8")

	var bounds := Rect2(center - Vector2(24, 20), Vector2(48, 40))
	draw_rect(bounds, fill)
	draw_rect(bounds, Color("#b6bcc4"), false, 1.0)
	match symbol:
		"pause":
			draw_rect(Rect2(center + Vector2(-7, -9), Vector2(4, 18)), ink)
			draw_rect(Rect2(center + Vector2(3, -9), Vector2(4, 18)), ink)
		"play":
			draw_colored_polygon(PackedVector2Array([
				center + Vector2(-5, -9), center + Vector2(9, 0), center + Vector2(-5, 9)
			]), ink)
		"drop":
			draw_line(center + Vector2(0, -11), center + Vector2(0, 4), ink, 2.4, true)
			draw_polyline(PackedVector2Array([
				center + Vector2(-5, 0), center + Vector2(0, 5), center + Vector2(5, 0)
			]), ink, 2.4, true)
			draw_line(center + Vector2(-9, 10), center + Vector2(9, 10), ink, 2.4, true)
		"launch":
			draw_line(center + Vector2(-5, 0), center + Vector2(10, 0), ink, 2.4, true)
			draw_polyline(PackedVector2Array([
				center + Vector2(5, -5), center + Vector2(10, 0), center + Vector2(5, 5)
			]), ink, 2.4, true)
			draw_circle(center + Vector2(-10, 0), 3, ink, true, -1.0, true)
		"reset":
			draw_arc(center, 9, -0.38, 4.55, 24, ink, 2.4, true)
			draw_polyline(PackedVector2Array([
				center + Vector2(4, -13), center + Vector2(-1, -9), center + Vector2(4, -5)
			]), ink, 2.4, true)
