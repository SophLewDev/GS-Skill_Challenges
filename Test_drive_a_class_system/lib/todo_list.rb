class TodoList
  def initialize
    @list = []
  end

  def list
    @list
  end

  def add(todo) # todo is an instance of Todo
    @list << todo
  end

  def incomplete
    @list.map.select { |todo|
      todo if todo.done? == false
    }
  end

  def complete
    @list.map.select { |todo|
    todo if todo.done? == true
    }
  end

  def give_up!
    @list.map { |todo|
    todo.mark_done!
    }
  end
end