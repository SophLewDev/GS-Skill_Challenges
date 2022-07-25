require "Diary"

  RSpec.describe Diary do
    context "#instance variables" do
      it "returns an empty array" do
        diary = Diary.new
        expect(diary.list_entries).to eq []
        expect(diary.list_todos).to eq []
        expect(diary.list_contacts).to eq []
      end
    end
  end