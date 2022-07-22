Todo List Design recipe

1. Describe the problem
  As a user
  So that I can keep track of my tasks
  I want a program that I can add todo tasks to and see a list of them.

  As a user
  So that I can focus on tasks to complete
  I want to mark tasks as complete and have them disappear from the list.

2. Design the class interface
  class ToDoList
    def initialize
      #@todo # empty array
    end
    def add_todo(text) #todo is a string
      #add todo to list
      #fail if todo_id already exists in hash
    end
    def list
      #shows list of todo's
    end
    def completed(todo) #todo is a string
      #mark tasks as complete and remove from todo's list
    end
  end

3. Create examples as tests
  task = ToDoList.new
  task.add_todo("Clean")
  task.list # => ["Clean"]

  task = ToDoList.new
  task.list # fails with "No todo added"

  task = ToDoList.new
  task.add_todo("Clean)
  task.completed("Clean") # => say that the todo is completed then remove from @todo

4. implement the behaviour
  Follow the TDD red, green, refactor process

