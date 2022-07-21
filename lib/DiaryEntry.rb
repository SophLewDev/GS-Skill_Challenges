class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @last_word_index = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "Wpm cannot be zero" unless wpm > 0
    count_words / wpm.to_f
  end

  def reading_chunk(wpm, minutes)
    fail "Wpm must be more than zero" unless wpm > 0
    @last_word_index = 0 if @last_word_index > count_words
    words = wpm * minutes
    new_index = @last_word_index + words
    chunk = @contents.split(" ")[@last_word_index...(new_index)].join(" ")
    @last_word_index = new_index
    chunk
  end
end

diary = DiaryEntry.new("title", "one, two, three")
puts diary.reading_chunk(2,1)
puts diary.reading_chunk(1,1)
puts diary.reading_chunk(2,1)