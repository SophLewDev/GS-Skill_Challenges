class Diary
    def initialize
      @entries = []
      @todos = []
      @contacts = []
    end
    def add_entry(entry)
      @entries << entry
    end
    def add_todo(todo)
      @todos << todo
    end
    def add_contact(contact)
      @contacts << contact
    end
    def list_entries
      @entries
    end
    def list_todos
      @todos
    end
    def list_contacts
      @contacts
    end
    def completed_todos
      @todos.map.select { |todo|
       todo.completed? == true
      }
    end
    def incompleted_todos
      @todos.map.select { |todo|
        todo.completed? == false
       }
    end
    def reading_time(wpm, minutes)
      time = wpm*minutes.to_f
      entries_within_time = []
      @entries.map.select { |entry|
        entries_within_time << entry if entry.count_words <= time
        }
        entries_within_time
    end
  end