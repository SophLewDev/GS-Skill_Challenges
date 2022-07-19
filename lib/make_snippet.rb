def make_snippet(string)
  string.split(" ").length >= 5 ? string.split[0...5].join(' ') + "..." : string
end