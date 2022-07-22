require "check_grammar"
RSpec.describe "check_grammar method" do
  it "returns the text with a Capital letter at the beginning, and punctuation at the end" do
    result = check_grammar("hello, it is cloudy today")
    expect(result).to eq "Hello, it is cloudy today."
  end
  it "returns and empty string if text is empty" do
    result = check_grammar("")
    expect(result).to eq ""
  end
end