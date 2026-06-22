extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

# Transposing a grid.
func _transpose_safe(arr : Array, crop : bool = false) -> Dictionary:

	if arr.is_empty():
		# Key:Value Pairs.
		# Key1 = "result" : Value1 = []
		# Key2 = "diagnostic" : Value2 = { "jagged" : false, "empty" : true }
		# result is an object type that is an Array
		# diagnostic is an object type that itself contains 2 variables in itself.
		# Jagged means - the length of the rows and columns are not equal!
		return { "result" : [], "diagnostic" : {"jagged" : false, "empty" : true} }

	# Using the size of the first element in the array and considering it as the number of columns in the grid.
	var num_columns = 0
	var iter : int = 0

	# Iterate to find the first array which is not 0 size!
	while (iter != arr.size()) && (arr[iter].size() == 0):
		iter += 1

	# If the array is just filled with empty arrays. Early exit!
	if iter == arr.size():
		return { "result" : [], "diagnostic" : {"jagged" : false, "empty" : true} }

	num_columns = arr[iter].size()

	var jagged = false

	for row in arr:
		# If even a single row's size is not equal to the number of columns - then it is a jagged grid.
		if row.size() != num_columns:
			jagged = true
		# The number of columns is always updated to the minimum of the existing number of columns or row's size!
		# This will make the num_columns to be the smallest column size out of all the rows!
		if crop == true:
			num_columns = min(num_columns, row.size())
		else:
			while row.size() < num_columns:
				row.append(null)
			num_columns = max(num_columns, row.size())

	var result = []
	# Loop through the range of the value that is number of columns!
	for col in range(num_columns):
		var new_row = []
		# Getting the column numbered value from the row and adding only that to the new_row
		for row in arr:
			new_row.append(row[col])
		# This new row of columns is now appended to the result thereby doing the transpose
		result.append(new_row)

	return { "result" : result, "diagnostic" : {"jagged" : jagged, "empty" : false} }
