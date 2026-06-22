extends Node2D

@export var flatteningNode : Node2D

@export var tested : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#comment tested = true below to run the unit tests.
	#tested = true

	if tested == false:
		_flatten_test_1()
		_flatten_test_2()
		_flatten_test_3()
		_flatten_test_4()
		_flatten_test_5()
		_flatten_test_6()
		_flatten_test_7()
		tested = true

func _flatten_test_1() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'] ]
	print(_testArr)
	var _flattenedTestArray : Array = flatteningNode._flatten_array(_testArr)
	print(_flattenedTestArray)

func _flatten_test_2() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'], ['W', 'X', 'Y', 'Z'] ]
	print(_testArr)
	var _flattenedTestArray : Array = flatteningNode._flatten_array(_testArr)
	print(_flattenedTestArray)

func _flatten_test_3() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'] ]
	print(_testArr)
	var _flattenedTestArray : Array = flatteningNode._flatten_array(_testArr)
	print(_flattenedTestArray)

func _flatten_test_4() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _flattenedTestArray : Array = flatteningNode._flatten_array(_testArr)
	print(_flattenedTestArray)

func _flatten_test_5() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'], [] ]
	print(_testArr)
	var _flattenedTestArray : Array = flatteningNode._flatten_array(_testArr)
	print(_flattenedTestArray)

func _flatten_test_6() -> void:
	var _testArr : Array[Array] = [ [], [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _flattenedTestArray : Array = flatteningNode._flatten_array(_testArr)
	print(_flattenedTestArray)

func _flatten_test_7() -> void:
	var _testArr : Array[Array] = [ [], [], [], [] ]
	print(_testArr)
	var _flattenedTestArray : Array = flatteningNode._flatten_array(_testArr)
	print(_flattenedTestArray)
