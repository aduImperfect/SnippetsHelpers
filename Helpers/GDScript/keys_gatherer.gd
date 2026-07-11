class_name KeysGatherer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

#Example: {key0 : value, key1 : {keyA : value, keyB : value} -> [key0, key1.keyA, key1.keyB, key2]
static func _gather_keys(_dict : Dictionary, unlimitedDepth : bool = false, _concatStr : String = "") -> Array:
	var key_list : Array = []
	for item in _dict:
		var _tempDict = _dict.get(item)
		if _tempDict is Dictionary:
			if unlimitedDepth == false:
				key_list.append(str(item))
			else:
				key_list.append_array(_gather_keys(_tempDict, unlimitedDepth, _concatStr + str(item) + "."))
		else:
			if _concatStr.is_empty():
				key_list.append(str(item))
			else:
				key_list.append(_concatStr + str(item))
	return key_list
