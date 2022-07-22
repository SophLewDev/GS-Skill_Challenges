Track Design Recipe

1. Describe the problem
  As a user
  So that I can keep track of my music listening
  I want to add tracks I've listened to and see a list of them.

2. Design the class interface
  class Track
    def initialize
      @playlist = [] #array
    end
    def add_tracks(track) #will be a string
      #adding track to playlist
    end
    def list
      #give a list of the tracks added to playlist, in an array
    end
  end

3. Create examples as tests
  track = Track.new
  track.playlist # => []

  track = Track.new
  track.add_tracks("Hello")
  track.list # => ["Hello"]

  track = Track.new
  track.list # => fail "The playlist is empty"

4. Implement the behaviour
  Follow the TDD red, green, refactor process