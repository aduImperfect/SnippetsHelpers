class_name FuncsGathering

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

static func get_functions_starting_with(script: GDScript, prefix: String) -> Array:
	var results: Array = []
	
	# Fetch all methods explicitly defined within that script file
	var method_list: Array = script.get_script_method_list()
	
	for method in method_list:
		var method_name: String = method["name"]
		# Check if the function name starts with your prefix string
		if method_name.begins_with(prefix):
			results.append(method_name)
			
	return results
