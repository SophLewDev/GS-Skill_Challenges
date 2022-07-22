require "DiaryEntry"
RSpec.describe DiaryEntry do
  it "returns title" do
    diary = DiaryEntry.new("Diary", "contents")
    expect(diary.title).to eq "Diary"
    expect(diary.contents).to eq "contents"
  end

  describe "#count_words" do
  it "counts words" do
    diary = DiaryEntry.new("Diary", "contents")
    expect(diary.count_words).to eq 1
  end
  it "gives 0 when contents is empty" do
    diary = DiaryEntry.new("Diary", "")
    expect(diary.count_words).to eq 0
  end
end

  describe "#reading_time" do
    context "given a positive integer for wpm" do
      it "returns reading time it takes to read the words" do
        diary = DiaryEntry.new("Diary", "one, two, three, four, five")
        expect(diary.reading_time(100)).to eq 0.05
      end
    end

    context "given an wpm of 0" do
      it "fails" do
        diary = DiaryEntry.new("Diary", "")
        expect { diary.reading_time(0) }.to raise_error "Wpm cannot be zero"
      end
    end
  end

  describe "#reading_chunks" do
    it "gives string back that can be read within the time and wpm" do
      diary = DiaryEntry.new("Diary", "I started my first day in work today, it went well and I am excited!")
      expect(diary.reading_chunk(10,1)).to eq "I started my first day in work today, it went"
    end
    it "gives the rest of the string back that can be read within the time and wpm" do
      diary = DiaryEntry.new("Diary", "I started my first day in work today, it went well and I am excited!")
      diary.count_words
      diary.reading_time(10)
      diary.reading_chunk(10,1)
      expect(diary.reading_chunk(10,1)).to eq "well and I am excited!"
    end
    it "restarts the process of giving the string in reading chunks" do
      diary = DiaryEntry.new("Diary", "I started my first day in work today, it went well and I am excited!")
      diary.count_words
      diary.reading_time(10)
      diary.reading_chunk(10,1)
      diary.reading_chunk(10,1)
      expect(diary.reading_chunk(10,1)).to eq "I started my first day in work today, it went"
    end
    it "restarts if it finishes exactly on the end" do
      diary = DiaryEntry.new("Diary", "I started my first day in work today, it went well and I am excited!")
      diary.reading_chunk(10,1)
      diary.reading_chunk(6,1)
      expect(diary.reading_chunk(10,1)).to eq "I started my first day in work today, it went"
    end
    it "fails" do
      diary = DiaryEntry.new("Diary", "one, two three")
      expect { diary.reading_chunk(0,5)} .to raise_error "Wpm must be more than zero"
    end
  end
end