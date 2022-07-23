require "todo"
require "todo_list"

RSpec.describe "todo integration test" do
  describe "#incomplete" do
    it "returns all non-complete todo(s)" do
      list = TodoList.new
      todo = Todo.new("Work")
      list.add(todo)
      expect(list.incomplete).to eq [todo]
    end

    it "returns an empty array if all todos have already been completed" do
      list = TodoList.new
      todo = Todo.new("Work")
      list.add(todo)
      todo.mark_done!
      expect(list.incomplete).to eq []
    end
  end

  describe "#complete" do
    it "returns all completed todo(s)" do
      list = TodoList.new
      todo = Todo.new("Work")
      list.add(todo)
      todo.mark_done!
      expect(list.complete).to eq [todo]
    end

    it "returns an empty array if no todos have been completed" do
      list = TodoList.new
      todo = Todo.new("Work")
      list.add(todo)
      expect(list.complete).to eq []
    end
  end   
  
  describe "#give_up!" do
    context "mark all todos as compelte"
      it "returns them" do
        list = TodoList.new
        todo_1 = Todo.new("Work")
        todo_2 = Todo.new("Clean")
        list.add(todo_1)
        list.add(todo_2)
        list.give_up!
        expect(list.complete).to eq [todo_1, todo_2]
      end
    context "todos have not been marked as complete" do
      it "returns an empty array" do
        list = TodoList.new
        todo = Todo.new("Work")
        list.give_up!
        expect(list.complete).to eq []
      end
    end
  end
end
