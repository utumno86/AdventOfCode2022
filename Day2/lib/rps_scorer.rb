module RPSScorer
  def self.parse_plays(guide)
    guide.split("\n").map do |play|
      play.split(" ")
    end
  end

  # def self.most_calories(calories_list)
  #   count_calories(calories_list).max
  # end

  # def self.top_three_calories(calories_list)
  #   count_calories(calories_list).max(3).sum
  # end
end
