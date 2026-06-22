extends Node2D

@export var keysGathererNode : Node2D

@export var tested : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#comment tested = true below to run the unit tests.
	#tested = true

	if tested == false:
		_key_gathering_test_1()
		tested = true

func _key_gathering_test_1() -> void:
	var _testDict : Dictionary = {"Key_0" : 28, "Key_1" : {"Key_A" : 45, "Key_B" : -20}, "Key_2" : 100}
	print(_testDict)
	var _keysListTestArray : Array = keysGathererNode._gather_keys(_testDict)
	print(_keysListTestArray)
