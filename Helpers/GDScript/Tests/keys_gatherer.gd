extends Node2D

@export var tested : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#comment tested = true below to run the unit tests.
	#tested = true

	if tested == false:
		print("---------------------------")
		print("Keys Gathering")
		print("---------------------------")
		var keys_gathering_funcs : Array = FuncsGathering.get_functions_starting_with(get_script(), "_key_gathering_test_")
		for keys_gather_test in keys_gathering_funcs:
			call(keys_gather_test)
		tested = true
		print("---------------------------")

func _key_gathering_test_1() -> void:
	var _testDict : Dictionary = {"Key_0" : 28, "Key_1" : {"Key_A" : 45, "Key_B" : -20}, "Key_2" : 100}
	print(_testDict)
	var _keysListTestArray : Array = KeysGatherer._gather_keys(_testDict)
	print("Result:")
	print(_keysListTestArray)
	print("-----------")

func _key_gathering_test_2() -> void:
	var _testDict : Dictionary = {"Key_0" : {"Key_A" : {"Key_F1" : {"Key_W" : 45, "Key_X" : -20}, "Key_F2" : -20}, "Key_B" : -20}, "Key_1" : {"Key_A" : 45, "Key_B" : {"Key_F1" : 45, "Key_F2" : -20}}, "Key_2" : 100}
	print(_testDict)
	var _keysListTestArray : Array = KeysGatherer._gather_keys(_testDict, true)
	print("Result:")
	print(_keysListTestArray)
	print("-----------")

func _key_gathering_test_3() -> void:
	var _testDict : Dictionary = {"Key_0" : 28, "Key_1" : {"Key_A" : 45, "Key_B" : -20}, "Key_2" : 100}
	print(_testDict)
	var _keysListTestArray : Array = KeysGatherer._gather_keys(_testDict, true)
	print("Result:")
	print(_keysListTestArray)
	print("-----------")
