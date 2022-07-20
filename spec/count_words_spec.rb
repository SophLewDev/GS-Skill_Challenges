require "count_words"
RSpec.describe "count_words method" do
  it "counts the words in the string" do
    result = count_words("this is a string")
    expect(result).to eq 4
  end
  it "counts the words in the string" do
    result = count_words("")
    expect(result).to eq 0
  end
end
