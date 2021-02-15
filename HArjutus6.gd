extends Node

var rng = RandomNumberGenerator.new()
var life = 100
var bullet = 5

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		if life > 0:
			shooting()
	if Input.is_action_just_pressed("reload"):
			reloading()

func shooting():
	rng.randomize()
	var damag = rng.randi_range(8,12)
	if bullet > 0:
		if bool(randi() %2):
			life -= damag
		else:
			print("missed")
		print("Bullets left: %s" % [bullet])
		bullet -= 1
	else:
		print("click")
	print(life)
func reloading():
	print("Adding bullets")
	bullet = 5
	print("Padruneid salves %s" % [bullet])
