class ToDoList

  def initialize
    @todo = []
  end

  def add_todo(todo)
    @todo << todo
  end

  def list
    fail "No todo added" if @todo.empty?
    @todo
  end

  def completed(todo)
    fail "This todo does not exist" if !@todo.include?(todo)
    puts "Completed the todo #{todo}"
    @todo.delete(todo)
    @todo
  end

end