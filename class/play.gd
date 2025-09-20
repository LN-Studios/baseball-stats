class_name Play extends Object

enum {
	None,
	Error,
	Item,
	Walk,
	Hitbypitch,
	Ground,
	Fly,
	Strikeout,
	StrikeoutLooking,
	Doubleplay,
	FieldersChoice,
	Sacfly,
	Sacbunt,
	InfieldFly,
}

var data = {
	bases = 0,
	type = 0,
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
		type != Walk && 
		type != Hitbypitch && 
		type != Sacfly && 
		type != Sacbunt)

func is_hit() -> bool:
	var type = get_type()
	return (
		get_bases() > 0 &&
		is_atbat() &&
		type != Error &&
		type != FieldersChoice
	)
