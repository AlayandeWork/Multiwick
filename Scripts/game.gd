extends Node2D
 
var peer = ENetMultiplayerPeer.new()
@export var player_scene: PackedScene
 
 
func _on_host_pressed():
	peer.create_server(445)
	multiplayer.multiplayer_peer = peer
	multiplayer.peer_connected.connect(_add_player)
	_add_player()
 
func _add_player(id = 1):
	var player = player_scene.instantiate()
	player.name = str(id)
	call_deferred("add_child",player)
 
 
func _on_join_pressed():
	peer.create_client("localhost", 445)
	multiplayer.multiplayer_peer = peer


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
