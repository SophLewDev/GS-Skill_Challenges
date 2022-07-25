require "Todo"

RSpec.describe Todo do
  describe "instance variables" do
    it "returns todo" do
      todo = Todo.new("Work")
      expect(todo.todo).to eq "Work"
    end
  end
  describe "#completed?" do
    it "returns true or false if a todo has been completed or not" do
      todo_1 = Todo.new("Work")
      todo_2 = Todo.new("Clean")
      todo_1.mark_as_completed
      expect(todo_1.completed?).to eq true
      expect(todo_2.completed?).to eq false
    end
  end
end