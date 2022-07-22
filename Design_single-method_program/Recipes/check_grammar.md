1. Describe the problem
  As a user
  So that I can improve my grammar
  I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the method signature
  capital_punctuation = check_grammar(text)
  text is a string e.g. "hello"
  capital_punctuation will return a string e.g. "Hello."

3. Create examples of tests
  check_grammar("hello, it is cloudy today) => "Hello, it is cloudy today."
  check_grammar("") => ""

4. Implement the behaviour
  Follow TDD process