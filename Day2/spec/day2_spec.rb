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

  context "#object_score" do
    it "returns the correct score for scissors" do
      expect(RPSScorer.object_score("Z")).to eq(3)
    end
  end

  context "#play score" do
    it "paper beats rock" do
      expect(RPSScorer.play_score(["B", "X"])).to eq(0)
    end
    it "rock beats scissors" do
      expect(RPSScorer.play_score(["C", "X"])).to eq(6)
    end
    it "handles ties" do
      expect(RPSScorer.play_score(["C", "Z"])).to eq(3)
    end
    it "handles sample scenario" do
      expect(RPSScorer.play_score(RPSScorer.parse_plays(guide)[1])).to eq(0)
    end
  end

  context "#total_score" do
    it "calculates the correct score from sample" do
      expect(RPSScorer.total_score(guide)).to eq(15)
    end
  end

  # context "solve the actual problem" do
  #   it "returns the correct answer" do
  #     puts ElfCalorieCounter.most_calories(fixture("real_input"))
  #   end
  #   it "returns the correct answer to problem 2" do
  #     puts ElfCalorieCounter.top_three_calories(fixture("real_input"))
  #   end
  # end
end
