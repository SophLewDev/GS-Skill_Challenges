1. Describe the problem
  As a user
  So that I can keep track of my tasks
  I want to check if a text includes the string #TODO

2. Design the method signature
  answer = include_todo(text)
  text is a string e.g. "hello"
  answer is a boolean

3. Create examples of tests
  include_todo("#TODO I need to clean") => true
  include_todo("TODO I need to clean") => false
  include_todo("#todo I need to clean") => false
  include_todo("#Todo I need to clean") => false
  include_todo("#To do I need to clean") => false
  include_todo("") => false

4. Implement the behaviour
  Follow TDD process
