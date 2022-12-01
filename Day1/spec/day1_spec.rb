require_relative "../lib/elf_calorie_counter"
require_relative "./spec_helper"

describe ElfCalorieCounter do
  let(:counter) { ElfCalorieCounter }
  let(:calorie_input) { fixture("elf_calories") }
  it "loads" do
    expect(described_class).to be_a Module
  end

  it "loads the sample.txt" do
    expect(fixture("elf_calories").lines.count).to eq(14)
  end

  context "#count_calories" do
    it "returns an array" do
      expect(counter.count_calories(calorie_input)).to be_a Array
    end
    it "returns the correct number array elements" do
      expect(counter.count_calories(calorie_input).length).to eq(5)
    end
    it "returns the correct sum for the first elf" do
      expect(counter.count_calories(calorie_input)[0]).to eq(6000)
    end
  end

  context "#most_calories" do
    it "returns the biggest calories count of the elves" do
      expect(counter.most_calories(calorie_input)).to eq(24000)
    end
  end

  context "#top_three_calories" do
    it "returns the sum of the top 3 elf calories" do
      expect(counter.top_three_calories(calorie_input)).to eq(45000)
    end
  end

  context "solve the actual problem" do
    it "returns the correct answer" do
      puts ElfCalorieCounter.most_calories(fixture("real_input"))
    end
    it "returns the correct answer to problem 2" do
      puts ElfCalorieCounter.top_three_calories(fixture("real_input"))
    end
  end
end
