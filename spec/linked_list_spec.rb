require './lib/linked_list'

RSpec.describe "linked list" do

  before :each do
    @list = LinkedList.new
  end

  it 'exists' do
    expect(@list).to be_a LinkedList
  end

  it 'starts with no head link' do
    expect(@list.head).to be_nil
  end

  it 'can add head link' do
    @list.append("West")
    expect(@list.head).to be_a Node
    expect(@list.head.next_node).to be_nil
    expect(@list.count).to eq(1)
  end

  it 'can turn list to string' do
    @list.append("West")
    expect(@list.to_string).to eq("The West family")
  end

  it 'can add multiple links' do
    @list.append("Rhodes")
    @list.append("Hardy")
    expect(@list.head.next_node).to be_a Node
    expect(@list.head.next_node.surname).to eq("Hardy")
    expect(@list.count).to eq(2)
    expected = "The Rhodes family, followed by the Hardy family"
    expect(@list.to_string).to eq(expected)
  end

  it "won't break if not appended when calling methods" do
    expect(@list.count).to eq(0)
    expect(@list.to_string).to eq('none')
  end

  it 'can prepend' do
    @list.append("Brooks")
    @list.append("Henderson")
    @list.prepend("McKinney")
    expected = "The McKinney family, followed by the Brooks family, followed by the Henderson family"
    expect(@list.to_string).to eq(expected)
    expect(@list.count).to eq(3)
  end

end
