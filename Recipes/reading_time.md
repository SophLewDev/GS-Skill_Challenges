1. Describe the problem
  As a user
  So that I can manage my time
  I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the method signature
  time = reading_time(text)
  text is a string e.g. "hello, how are you today"
  time will be a string, with string interpolation in seconds e.g. "5 seconds"

3. Create examples of tests
  reading_time("hello, how are you today") => "1.5 seconds"
  reading_time("") => "0 seconds"

4. Implement the behaviour
  Follow the TDD process.

