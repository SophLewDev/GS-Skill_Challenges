def get_most_common_letter(text)
  counter = Hash.new(0)
  text.delete(" ").chars.each do |char|
    counter[char] += 1
  end
  counter.sort_by { |k, v| v }[-1][0]
end
# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
puts get_most_common_letter("hhhh kkkk lllll")