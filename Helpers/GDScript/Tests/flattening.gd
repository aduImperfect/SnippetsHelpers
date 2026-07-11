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
		print("Flattening")
		print("---------------------------")
		var flattening_funcs : Array = FuncsGathering.get_functions_starting_with(get_script(), "_flatten_test_")
		for flat_test in flattening_funcs:
			call(flat_test)
		tested = true
		print("---------------------------")

func _flatten_test_1() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_2() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C', 'D'], ['W', 'X', 'Y', 'Z'] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_3() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_4() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_5() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'], [] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_6() -> void:
	var _testArr : Array[Array] = [ [], [0, 1, 2, 3], ['A', 'B', 'C'], ['Y', 'Z'] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_7() -> void:
	var _testArr : Array[Array] = [ [], [], [], [] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr, true)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_8() -> void:
	var _testArr : Array[Array] = [ [0, 1, 2, 3], [], ['A', 'B', 'C'], [], ['Y', 'Z'] ]
	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr, true)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")

func _flatten_test_9() -> void:
	var _testArr : Array = [
	1,
	"string",
	{
	  "key": "value"
	},
	[1, 2, 3],
	[
	  {
		"nestedKey": "nestedValue"
	  },
	  [4, 5, 6]
	],
	true,
	[
	  [
		"deeply",
		"nested",
        "array"
	  ],
	  [
		[
		  {
			"deepKey": "deepValue"
		  },
		  [7, 8, 9]
		]
	  ]
	],
	{
	  "anotherKey": ["another", "value"]
	}
	]

	print(_testArr)
	var _flattenedTestArray : Array = Flattener._flatten_array(_testArr)
	print("Result:")
	print(_flattenedTestArray)
	print("-----------")
