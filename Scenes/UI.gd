extends Control


func _ready():
	Game.connect("inputReceived", self, "updateScore")

func updateScore():
	$Label.text = String(Game.score) 

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

