def reading_time(text)
  if text != ""
    words = text.split(" ").count
    time = (words.to_f / 200 * 60)
    return "#{time} seconds"
  else
    return "0 seconds"
  end
end