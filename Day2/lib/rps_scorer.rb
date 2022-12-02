module RPSScorer
  SCORES = {"X" => 1,
            "Y" => 2,
            "Z" => 3}

  def self.parse_plays(guide)
    guide.split("\n").map do |play|
      play.split(" ")
    end
  end

  def self.object_score(object)
    SCORES[object]
  end

  # def self.top_three_calories(calories_list)
  #   count_calories(calories_list).max(3).sum
  # end
end
