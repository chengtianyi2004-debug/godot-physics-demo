extends Node2D

@onready var cube = $AnimatedCube
@onready var rubber_ball: RigidBody2D = $RubberBall
@onready var heavy_ball: RigidBody2D = $HeavyBall
@onready var launch_ball: RigidBody2D = $LaunchBall
@onready var animation_button = $Controls/Animation
@onready var drop_button: Button = $Controls/Drop
@onready var launch_button: Button = $Controls/Launch


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_animation"):
		toggle_animation()
	elif event.is_action_pressed("drop_balls"):
		drop_balls()
	elif event.is_action_pressed("launch_ball"):
		launch()
	elif event.is_action_pressed("reset_lab"):
		reset_lab()


func toggle_animation() -> void:
	cube.running = not cube.running
	animation_button.symbol = "pause" if cube.running else "play"
	animation_button.queue_redraw()


func drop_balls() -> void:
	if drop_button.disabled:
		return

	rubber_ball.freeze = false
	heavy_ball.freeze = false
	drop_button.disabled = true


func launch() -> void:
	if launch_button.disabled:
		return

	launch_ball.freeze = false
	launch_ball.apply_central_impulse(Vector2(1900, -240))
	launch_button.disabled = true


func reset_lab() -> void:
	get_tree().reload_current_scene()
