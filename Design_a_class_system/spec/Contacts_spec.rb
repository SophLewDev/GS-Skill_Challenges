require "Contacts"

RSpec.describe Contacts do
  describe "Instance variables" do
    it "returns name and number" do
      contact = Contacts.new("Sophie", "12345")
      expect(contact.name).to eq "Sophie"
      expect(contact.number).to eq "12345"
    end
  end

end