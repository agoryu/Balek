extends AnimatedSprite

var position_sprite = 0

onready var hit = $AudioStreamPlayer_Hit
onready var hit2 = $AudioStreamPlayer_Hit_2

func _ready():
	Game.connect("inputReceived", self, "anim_sprite")

func anim_sprite():
	if position_sprite != 1:
		self.play("one")
		hit.play()
		position_sprite = 1
	else:
		self.play("two")
		hit2.play()
		position_sprite = 2
