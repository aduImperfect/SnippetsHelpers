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
		print("Transpose")
		print("---------------------------")
		var transpose_funcs : Array = FuncsGathering.get_functions_starting_with(get_script(), "_transpose_test_")
		for transpose_test in transpose_funcs:
			call(transpose_test)
		tested = true
		print("---------------------------")

func _transpose_test_1() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = Transpose._transpose_safe(_testArr)
	print("Result:")
	print(_transposedTestDict)
	print("-----------")

func _transpose_test_2() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'], ['W', 'X', 'Y', 'Z'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = Transpose._transpose_safe(_testArr)
	print("Result:")
	print(_transposedTestDict)
	print("-----------")

func _transpose_test_3() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = Transpose._transpose_safe(_testArr)
	print("Result:")
	print(_transposedTestDict)
	print("-----------")

func _transpose_test_4() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = Transpose._transpose_safe(_testArr)
	print("Result:")
	print(_transposedTestDict)
	print("-----------")

func _transpose_test_5() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'], [] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = Transpose._transpose_safe(_testArr)
	print("Result:")
	print(_transposedTestDict)
	print("-----------")

func _transpose_test_6() -> void:
	var _testArr : Array[Array] = [ [], [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = Transpose._transpose_safe(_testArr)
	print("Result:")
	print(_transposedTestDict)
	print("-----------")

func _transpose_test_7() -> void:
	var _testArr : Array[Array] = [ [], [], [], [] ]
	print(_testArr)
	var _transposedTestDict : Dictionary = Transpose._transpose_safe(_testArr)
	print("Result:")
	print(_transposedTestDict)
	print("-----------")
