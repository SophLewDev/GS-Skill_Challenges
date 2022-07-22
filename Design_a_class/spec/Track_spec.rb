require "Track"
RSpec.describe Track do
  describe "#playlist" do
    it "should give an empty array when called on a new method" do
      track = Track.new
      expect(track.playlist).to eq []
    end
  end

  describe "#list" do
    it "give a list of the tracks added so far" do
      track = Track.new
      track.add_track("Hello")
      result = track.list
      expect(result).to eq ["Hello"]
    end
    context "calling list method on and empty playlist" do
      it "fails" do
        track = Track.new
        expect { track.list }.to raise_error "The playlist is empty"
      end
    end
  end
end
