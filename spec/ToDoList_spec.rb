require "ToDoList"
RSpec.describe ToDoList do
  describe "#list" do
    it "gives a list of the todos added so far" do
      task = ToDoList.new
      task.add_todo("Clean")
      expect(task.list).to eq ["Clean"]
    end
    context "want list of todo's when todo is empty" do
      it "fails" do
        task = ToDoList.new
        expect { task.list }.to raise_error "No todo added"
      end
    end
  end

  describe "#completed" do
    it "mark the todo as complete and removes from the list" do
      task = ToDoList.new
      task.add_todo("Clean")
      task.add_todo("Brush")
      expect(task.completed("Clean")).to eq ["Brush"]
    end
    context "trying to complete a task that doens't exist" do
      it "fails" do
        task = ToDoList.new
        task.add_todo("Clean")
        expect { task.completed("Brush") }.to raise_error "This todo does not exist"
      end
    end
  end
end
