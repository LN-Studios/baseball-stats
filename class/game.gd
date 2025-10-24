class_name Game extends Object

var data = {
    team1 = null,
    team2 = null,
    score1 = -1,
    score2 = -1,
}

var teams: Pair
var scores: Pair

func _init(dat = {}):
    data = dat
    teams = Pair.new(data.team1, data.team2)
    scores = Pair.new(data.score1, data.score2)

func get_away_team() -> Team:
    return teams.get_first()

func get_home_team() -> Team:
    return teams.get_second()

func get_away_score() -> int:
    return scores.get_first()

func get_home_score() -> int:
    return scores.get_second()

func get_winner() -> Team:
    if (get_away_score() > get_home_score()):
        return get_away_team()
    else:
        return get_home_team()

func get_loser() -> Team:
    if (get_away_score() < get_home_score()):
        return get_away_team()
    else:
        return get_home_team()