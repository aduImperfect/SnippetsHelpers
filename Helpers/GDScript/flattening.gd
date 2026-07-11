class_name Flattener

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

static func _flatten_array(_nestedArr : Array, keepNulls : bool = false) -> Array:
	var flat_list : Array = []
	for item in _nestedArr:
		if item is Array:
			if keepNulls == true:
				if item.size() == 0:
					flat_list.append(null)
				else:
					flat_list.append_array(_flatten_array(item))
			else:
				flat_list.append_array(_flatten_array(item))
		else:
			flat_list.append(item)
	return flat_list
