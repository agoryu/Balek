extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var music_intro = $AudioStreamPlayer_Intro
onready var music_main = $AudioStreamPlayer_Main

# Called when the node enters the scene tree for the first time.
func _ready():
	music_intro.play()

func _on_AudioStreamPlayer_Intro_finished():
	music_main.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
