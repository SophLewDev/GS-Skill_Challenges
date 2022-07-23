require "todo_list"

RSpec.describe TodoList do
  it "returns @list as empty array" do
    list = TodoList.new
    expect(list.list).to eq []
  end
end