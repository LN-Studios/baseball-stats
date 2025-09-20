extends Node

var players = List.new()
var teams = List.new()

func get_players(team) -> List:
	return players.filter(func(player): return (player.get_team() == team))
