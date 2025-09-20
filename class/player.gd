class_name Player extends Object

var data = {
	name = "",
	team = null,
	plays = List.new()
}

func get_name() -> String:
	return data.name
	
func get_team() -> Team:
	return data.team

func get_plays() -> List:
	return data.list()
	
func get_hits() -> int:
	return get_plays().get_count(func(play): return play.is_hit())

func get_atbats() -> int:
	return get_plays().get_count(func(play): return play.is_atbat())

func get_onbase() -> int:
	return get_plays().get_count(func(play): return play.get_bases() > 0)
	
func get_avg() -> float:
	return float(get_hits()) / float(get_atbats())
	
func get_obp() -> float:
	return float(get_onbase()) / float(get_atbats())
