require "include_todo"
RSpec.describe "include_todo method" do
  it "returns true if text includes #TODO" do
    result = include_todo("#TODO I need to clean")
    expect(result).to eq true
  end
  it "fails if there's no hashtag" do
    expect { include_todo("TODO I need to clean") }.to raise_error "This is not a todo"
  end
  it "fails if todo is all lowercase" do
    expect { include_todo("#todo I need to clean") }.to raise_error "This is not a todo"
  end
  it "fails if it is mixed case" do
    expect { include_todo("#Todo I need to clean") }.to raise_error "This is not a todo"
  end
  it "fails if there is a space between todo" do
    expect { include_todo("#To do I need to clean") }.to raise_error "This is not a todo"
  end
  it "fails if text is empty" do
    expect { include_todo("") }.to raise_error "This is not a todo"
  end
end