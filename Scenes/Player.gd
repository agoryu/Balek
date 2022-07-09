extends AnimatedSprite

var position_sprite = 0

func _ready():
	Game.connect("inputReceived", self, "anim_sprite")

func anim_sprite():
	if position_sprite != 1:
		self.play("one")
		position_sprite = 1
	else:
		self.play("two")
		position_sprite = 2
