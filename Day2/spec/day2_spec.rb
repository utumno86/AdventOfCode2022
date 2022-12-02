require_relative "../lib/rps_scorer"
require_relative "./spec_helper"

describe RPSScorer do
  let(:guide) { fixture("sample_guide") }
  it "loads" do
    expect(described_class).to be_a Module
  end

  it "loads the sample.txt" do
    expect(fixture("sample_guide").lines.count).to eq(3)
  end

  context "parse_plays" do
    it "returns an array" do
      expect(RPSScorer.parse_plays(guide)).to be_a Array
    end
    it "returns an array of arrays" do
      expect(RPSScorer.parse_plays(guide)[0]).to be_a Array
    end
    it "returns the play and the counter in an array" do
      expect(RPSScorer.parse_plays(guide)[0][0]).to eq("A")
      expect(RPSScorer.parse_plays(guide)[0][1]).to eq("Y")
    end
  end

  # context "#most_calories" do
  #   it "returns the biggest calories count of the elves" do
  #     expect(counter.most_calories(calorie_input)).to eq(24000)
  #   end
  # end

  # context "#top_three_calories" do
  #   it "returns the sum of the top 3 elf calories" do
  #     expect(counter.top_three_calories(calorie_input)).to eq(45000)
  #   end
  # end

  # context "solve the actual problem" do
  #   it "returns the correct answer" do
  #     puts ElfCalorieCounter.most_calories(fixture("real_input"))
  #   end
  #   it "returns the correct answer to problem 2" do
  #     puts ElfCalorieCounter.top_three_calories(fixture("real_input"))
  #   end
  # end
end
