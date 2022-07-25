require "Diary"
require "DiaryEntry"
require "Todo"
require "Contacts"

RSpec.describe "integration test" do
  describe "instance variables" do
    it "returns the instance variables" do
      diary = Diary.new
      entry = DiaryEntry.new("Title", "Contents")
      todo = Todo.new("Work")
      contact = Contacts.new("Sophie", "12345")
      diary.add_entry(entry)
      diary.add_todo(todo)
      diary.add_contact(contact)
      expect(diary.list_entries).to eq [entry]
      expect(diary.list_todos).to eq [todo]
      expect(diary.list_contacts).to eq [contact]
    end
  end
  describe "#list_entries" do
    it "returns a list of all diary entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Title_1", "Contents_1")
      entry_2 = DiaryEntry.new("Title_2", "Contents_2")
      diary.add_entry(entry_1)
      diary.add_entry(entry_2)
      expect(diary.list_entries).to eq [entry_1, entry_2]
    end
  end
  describe "#list_todos" do
    it "returns a list of all todos" do
      diary = Diary.new
      todo_1 = Todo.new("Work")
      todo_2 = Todo.new("Clean")
      diary.add_todo(todo_1)
      diary.add_todo(todo_2)
      expect(diary.list_todos).to eq [todo_1, todo_2]
    end
  end
  describe "#list_contacts" do
    it "returns a list of all contacts" do
      diary = Diary.new
      contact_1 = Contacts.new("Sophie", "12345")
      contact_2 = Contacts.new("John", "67890")
      diary.add_contact(contact_1)
      diary.add_contact(contact_2)
      expect(diary.list_contacts).to eq [contact_1, contact_2]
    end
  end
  describe "#completed_todos" do
    it "returns a list of completed todos" do
      diary = Diary.new
      todo_1 = Todo.new("Work")
      todo_2 = Todo.new("Clean")
      diary.add_todo(todo_1)
      diary.add_todo(todo_2)
      todo_1.mark_as_completed
      expect(diary.completed_todos).to eq [todo_1]
    end
  end
  describe "#incompleted_todos" do
    it "returns a list of incompleted todos" do
      diary = Diary.new
      todo_1 = Todo.new("Work")
      todo_2 = Todo.new("Clean")
      diary.add_todo(todo_1)
      diary.add_todo(todo_2)
      todo_1.mark_as_completed
      expect(diary.incompleted_todos).to eq [todo_2]
    end
  end
  describe "#reading_time" do
    it "returns the diary entries that can be read given the wpm and minute" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Title_1", "Hello, how are you")
      entry_2 = DiaryEntry.new("Title_2", "I am good thank you")
      diary.add_entry(entry_1)
      diary.add_entry(entry_2)
      expect(diary.reading_time(4,1)).to eq [entry_1]
    end
  end
end
