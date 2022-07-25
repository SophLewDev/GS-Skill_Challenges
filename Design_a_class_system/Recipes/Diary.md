Diary design recipe

1. Describe the problem
  As a user
  So that I can record my experiences
  I want to keep a regular diary

  As a user
  So that I can reflect on my experiences
  I want to read my past diary entries

  As a user
  So that I can reflect on my experiences in my busy day
  I want to select diary entries to read based on how much time I have and my reading speed

  As a user
  So that I can keep track of my tasks
  I want to keep a todo list along with my diary

  As a user
  So that I can keep track of my contacts
  I want to see a list of all of the mobile phone numbers in all my diary entries

  2. Design the class system
                                              ┌───────────────────────────┐
                                              │   Diary                   │
                                              │                           │
                                              │ -add diary entry          │
                                              │                           |
                                              │ -add todo                 │
                                              │ -add contact              │
                                              │ -add reading time diary entries│
                                              │ -completed todos          │
                                              │ -incompleted todos        │
                                              │ -list all entries         │
                                              │ -list all todos           │
                                              │ -list all contacts        │
                                              │                           │
                                              │                           │
  ┌────────────────────────┐                   └──────┬─────┬─────┬────────┘
  │    DiaryEntry          │                          │     │     │
  │                        │                          │     │     │                          ┌────────────────────────┐
  │ -title                 │                          │     │     │                          │   Contacts             │
  │                        │                          │     │     │                          │                        │
  │ -contents              │                          │     │     │                          │-name                   │
  │ -count_words           │                          │     │     │                          │                        │
  │                        │  ◄───────────────────────┘     │     └───────────────────────►  │-number                 │
  │                        │                                │                                │                        │
  │                        │                                │                                │                        │
  │                        │                                │                                │                        │
  │                        │                                │                                │                        │
  │                        │                                │                                └────────────────────────┘
  │                        │                                │
  │                        │                                │
  │                        │                                ▼
  │                        │
  └────────────────────────┘               ┌─────────────────────────────────┐
                                          │  Todo                           │
                                          │                                 │
                                          │ -task                           │
                                          │                                 │
                                          │ -completed                      │
                                          │                                 │
                                          │ -completed?                     │
                                          │                                 │
                                          │                                 │
                                          │                                 │
                                          │                                 │
                                          │                                 │
                                          └─────────────────────────────────┘

  Class Diary
    def initialize
      @entry = []
      @todo = []
      @contact = []
    end
    def add_entry(entry) #entry is an instance of DiaryEntries
      #Entry gets added to the diary
      #Returns nothing
    end
    def add_todo(todo) #todo is an instance of Todo
      #Todo gets added to the Diary
      #Returns nothing
    end
    def add_contact(contact) #Contact is an instance of Contacts
      #Contact gets added to Diary
      #Returns nothing
    end
    def completed_todos
      #Returns all of the completed todos, in an array
    end
    def incompleted_todos
      #Returns all of the incompleted todos, in an array
    end
    def reading_time(wpm, minutes) #wpm and minutes are both integers
      #Given the wpm and minutes, return the diary entries that can be read fully within the reading time
      #The output will be an array of the diary entries that fit the criteria
    end
    def list_entries
      #list all of the diary entries that have been added so far
      #list will be an array
    end
    def list_todos
      #list all of the todos that have been added so far
      #list will be an array
    end
    def list_contacts
      #list all of the contacts that have been added so far
      #list will be an array
    end
  end

  class DiaryEntries
    def initialize
      @title = title
      @contents = contents
    end
    def title
      #returns title, as a string
    end
    def contents
      #returns contents, as a string
    end
    def count_words
      #counts the words within the diary entry
      #returns an integer
    end
  end

  class Todo
    def initialize
      @todo = todo
      @completed = false
      #..
    end
    def todo
      #returns todo, as a string
    end
    def mark_as_completed
      #marks todo as completed
      #changes @completed to true
      #returns nothing
    end
    def completed?
      #returns whether the todo is completed or not, output boolean true or false
    end
  end

  class Contacts
    def initialize
      @name = name
      @number= = number
    end
    def name
      #returns name, as a string
    end
    def number
      #returns number, as a string
    end
  end


3. Create examples as Integration Tests

  diary = Diary.new
  entry = DiaryEntry.new("Title", "Contents")
  todo = Todo.new("Work")
  contact = Contacts.new("Sophie", "12345")
  diary.add_entry(entry)
  diary.add_todo(todo)
  diary.add_contact(contact)
  diary.list_entries # => [entry]
  diary.list_todos # => [todo]
  diary.list_contacts # => [contact]

  diary = Diary.new
  entry_1 = DiaryEntry.new("Title_1", "Contents_1")
  entry_2 = DiaryEntry.new("Title_2", "Contents_2")
  diary.add_entry(entry_1)
  diary.add_entry(entry_2)
  diary.list_entries # => [entry_1, entry_2]

  diary = Diary.new
  todo_1 = Todo.new("Work")
  todo_2 = Todo.new("Clean")
  diary.add_todo(todo_1)
  diary.add_todo(todo_2)
  diary.list_todos #=> [todo_1, todo_2]

  diary = Diary.new
  contact_1 = Contacts.new("Sophie", "12345")
  contact_2 = Contacts.new("John", "67890")
  diary.add_contact(contact_1)
  diary.add_contact(contact_2)
  diary.list_contacts # => [contact_1, contact_2]

  diary = Diary.new
  todo_1 = Todo.new("Work")
  todo_2 = Todo.new("Clean")
  diary.add_todo(todo_1)
  diary.add_todo(todo_2)
  todo_1.mark_as_completed
  diary.completed_todos # => [todo_1]

  diary = Diary.new
  todo_1 = Todo.new("Work")
  todo_2 = Todo.new("Clean")
  diary.add_todo(todo_1)
  diary.add_todo(todo_2)
  todo_1.mark_as_completed
  diary.incompleted_todos # => [todo_2]

  diary = Diary.new
  entry_1 = DiaryEntry.new("Title_1", "Hello, how are you")
  entry_2 = DiaryEntry.new("Title_2", "I am good thank you")
  diary.add_entry(entry_1)
  diary.add_entry(entry_2)
  diary.reading_time(4,1) # => [entry_1]


4. Create examples as Unit tests

  DiaryEntry
  entry = DiaryEntry.new("Title", "Contents")
  entry.title # => "Title"
  entry.contents # => "Contents"

  entry = DiaryEntry.new("Title", "Contents")
  entry.count_words # => 1

  Todo
  todo = Todo.new("Work")
  todo.todo # => "Work"

  todo_1 = Todo.new("Work")
  todo_2 = Todo.new("Clean")
  todo_1.mark_as_completed
  todo_1.completed? # => true
  todo_2.completed? # => false

  Contacts
  contact = Contacts.new("Sophie", "12345")
  contact.name # => "Sophie"
  contact.number # => "12345"

5. Implement behaviour
  After each test, follow the test-driving process of red, green, refactor



