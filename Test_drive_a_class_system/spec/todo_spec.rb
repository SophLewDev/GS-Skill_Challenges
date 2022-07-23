require "todo"

RSpec.describe "todo method" do
 it "returns task when initialized" do
  todo = Todo.new("Work")
  expect(todo.task).to eq "Work"
 end

 it "returns true if task is marked done" do
  todo = Todo.new("Work")
  todo.mark_done!
  expect(todo.done?).to eq true
 end

 it "returns false if task is not marked as done" do
  todo = Todo.new("Work")
  expect(todo.done?).to eq false
 end
end