require "DiaryEntry"

RSpec.describe DiaryEntry do
  describe "instance variables" do
    it "returns title and contents" do
      entry = DiaryEntry.new("Title", "Contents")
      expect(entry.title).to eq "Title"
      expect(entry.contents).to eq "Contents"
    end
  end
  describe "#count_words" do
    it "counts the number of words in contents" do
      entry = DiaryEntry.new("Title", "Contents")
      expect(entry.count_words).to eq 1
    end
  end

end