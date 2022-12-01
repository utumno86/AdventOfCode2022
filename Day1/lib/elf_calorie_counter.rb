module ElfCalorieCounter
  def self.count_calories(calories_list)
    calories_list.split("\n\n").map do |elf|
      elf.split("\n").map(&:to_i).sum
    end
  end

  def self.most_calories(calories_list)
    count_calories(calories_list).max
  end
end
