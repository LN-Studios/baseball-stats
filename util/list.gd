class_name List extends Object

var arr: Array

func _init(og_arr = []):
	arr = og_arr
	
func add(item: Variant):
	arr.append(item)

func get_item(index: int, alt = null):
	if (size() <= index):
		return alt
	else:
		return arr[index]
	
func size() -> int:
	return arr.size()
	
func for_each(function: Callable):
	for v in arr:
		function.call(v)

## returns a new list of items that return true for given callable
func filter(function: Callable) -> List:
	var new_list = List.new()
	for v in arr:
		if (function.call(v)):
			new_list.add(v)
	return new_list

## returns the number of items that return true for given callable
func get_count(function: Callable) -> int:
	var count = 0
	for v in arr:
		if (function.call(v)):
			count += 1
	return count
	
