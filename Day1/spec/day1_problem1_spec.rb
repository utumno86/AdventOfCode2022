require_relative "../lib/elf_calorie_counter"
require_relative "./spec_helper"

describe ElfCalorieCounter do
  it "loads" do
    expect(described_class).to be_a Module
  end

  it "loads the sample.txt" do
    expect(fixture("elf_calories").lines.count).to eq(14)
  end

  context "#count_calories" do
    let(:counter) { ElfCalorieCounter }
    let(:calorie_input) { fixture("elf_calories") }
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
end
