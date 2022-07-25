class Todo
  def initialize(todo)
    @todo = todo
    @completed = false
  end
  def todo
    @todo
  end
  def mark_as_completed
    @completed = true
  end
  def completed?
    @completed
  end
end