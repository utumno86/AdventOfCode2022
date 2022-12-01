require_relative "../lib/elf_calorie_counter"
require_relative "./spec_helper"

describe ElfCalorieCounter do
  it "loads" do
    expect(described_class).to be_a Module
  end

  it "loads the sample.txt" do
    expect(fixture("elf_calories").lines.count).to eq(14)
  end
end
