require "make_snippet"
RSpec.describe "make_snippet method" do
  it "brings back the first 5 words and three dots" do
    result = make_snippet("hello there, how are you today?")
    expect(result).to eq "hello there, how are you..."
  end
  it "brings back the first 5 words and three dots" do
    result = make_snippet("a b c d e f g h i j k?")
    expect(result).to eq "a b c d e..."
  end
  it "brings back the first 5 words and three dots" do
    result = make_snippet("a b c d")
    expect(result).to eq "a b c d"
  end
end