require "GrammarStats"
RSpec.describe GrammarStats do
  describe "#check(text)" do
    it "returns true if the text begins with a capital and end with a punctuation mark" do
      grammar_check = GrammarStats.new
      result = grammar_check.check("Hello, I am Sophie.")
      expect(result).to eq true
    end
    it "returns false if the text does not begin with a capital letter AND end with a punctuation mark" do
      grammar_check = GrammarStats.new
      result = grammar_check.check("hello, I am Sophie")
      expect(result).to eq false
    end
    it "returns false if the text does begin with a capital letter but does not end with a punctuation mark" do
      grammar_check = GrammarStats.new
      result = grammar_check.check("Hello, I am Sophie")
      expect(result).to eq false
    end
    it "returns false if the text does not begin with a capital letter but ends with a punctuation mark" do
      grammar_check = GrammarStats.new
      result = grammar_check.check("hello, I am Sophie?")
      expect(result).to eq false
    end
  end
  describe "#percentage_good" do
    it "gives the percentage of correct grammar checks" do
      grammar_check = GrammarStats.new
      grammar_check.check("Hello, I am Sophie.")
      grammar_check.check("Hello, I am Sophie")
      expect(grammar_check.percentage_good).to eq 50
    end
  end
end