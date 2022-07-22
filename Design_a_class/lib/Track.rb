class Track
  attr_accessor :playlist
  def initialize
    @playlist = []
  end
  
  def add_track(track)
    @playlist << track
  end

  def list
    fail "The playlist is empty" if @playlist.empty?
    @playlist
  end
end