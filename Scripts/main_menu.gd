extends Control

@onready var play_button = $VBoxContainer/PlayButton
@onready var online_button = $VBoxContainer/OnlineButton
@onready var quit_button = $VBoxContainer/QuitButton

func _ready():
	play_button.pressed.connect(_on_play_pressed)
	online_button.pressed.connect(_on_online_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func _on_play_pressed():
	print("Play Game Clicked")
	get_tree().change_scene_to_file("res://Scenes/offline_game.tscn")

func _on_online_pressed():
	print("Go Online Clicked")
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_quit_pressed():
	get_tree().quit()
