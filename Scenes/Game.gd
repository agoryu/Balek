extends Node2D

signal inputReceived

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	handleClick()

func handleClick():
	if Input.is_action_just_released("ui_accept"):
		score+=1
		emit_signal("inputReceived")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
