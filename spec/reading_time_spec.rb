require "reading_time"
RSpec.describe "reading_time method" do
  it "return the time it takes to read text, in seconds" do
    result = reading_time("hello, how are you today")
    expect(result).to eq "1.5 seconds"
  end
  it "return the time it takes to read zero text, in seconds" do
    result = reading_time("")
    expect(result).to eq ("0 seconds")
  end
end