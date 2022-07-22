def include_todo(text)
  if text.include?("#TODO")
    true
  else
    fail "This is not a todo"
  end
end