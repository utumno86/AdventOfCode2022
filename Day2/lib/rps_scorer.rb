module RPSScorer
  SCORES = {"X" => 1,
            "Y" => 2,
            "Z" => 3}

  WIN_CONDITIONS = {
    "X" => "C",
    "Y" => "A",
    "Z" => "B"
  }

  RPS_EQUIVALENTS = {
    "X" => "A",
    "Y" => "B",
    "Z" => "C"
  }

  def self.parse_plays(guide)
    guide.split("\n").map do |play|
      play.split(" ")
    end
  end

  def self.object_score(object)
    SCORES[object]
  end

  def self.play_score(play)
    opponent, player = play

    if WIN_CONDITIONS[player] == opponent
      6
    elsif opponent == RPS_EQUIVALENTS[player]
      3
    else
      0
    end
  end

  def self.total_score(guide)
    parse_plays(guide).map do |play|
      object_score(play[1]) + play_score(play)
    end.sum
  end
end
