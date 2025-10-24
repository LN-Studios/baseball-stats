class_name Play extends Object

var data = {
	bases = 0,
	type = -1,
	rbi = 0,
}

func get_bases() -> int:
	return data.bases

func get_type() -> int:
	return data.type
	
func get_rbi() -> int:
	return data.rbi

func is_atbat() -> bool:
	var type = get_type()
	return (
		type != Result.Walk && 
		type != Result.Hitbypitch && 
		type != Result.Sacfly && 
		type != Result.Sacbunt
	)

func is_hit() -> bool:
	var type = get_type()
	return (
		is_on_base() &&
		is_atbat() &&
		type != Result.Error &&
		type != Result.FieldersChoice
	)

func is_on_base() -> bool:
	return get_bases() > 0
