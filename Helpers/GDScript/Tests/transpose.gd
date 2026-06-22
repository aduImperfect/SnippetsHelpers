extends Node2D

@export var transposeNode : Node2D

@export var tested : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if tested == false:
		_transpose_test_1()
		_transpose_test_2()
		_transpose_test_3()
		_transpose_test_4()
		_transpose_test_5()
		_transpose_test_6()
		_transpose_test_7()
		tested = true

func _transpose_test_1() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = testingNode1._transpose_safe(_testArr)
	print(_transposedTestDict)

func _transpose_test_2() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'], ['W', 'X', 'Y', 'Z'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = testingNode1._transpose_safe(_testArr)
	print(_transposedTestDict)

func _transpose_test_3() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = testingNode1._transpose_safe(_testArr)
	print(_transposedTestDict)

func _transpose_test_4() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = testingNode1._transpose_safe(_testArr)
	print(_transposedTestDict)

func _transpose_test_5() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'], [] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = testingNode1._transpose_safe(_testArr)
	print(_transposedTestDict)

func _transpose_test_6() -> void:
	var _testArr : Array[Array] = [ [], [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = testingNode1._transpose_safe(_testArr)
	print(_transposedTestDict)

func _transpose_test_7() -> void:
	var _testArr : Array[Array] = [ [], [], [], [] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = testingNode1._transpose_safe(_testArr)
	print(_transposedTestDict)
