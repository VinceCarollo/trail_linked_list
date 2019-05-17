require './lib/node'

RSpec.describe "Node" do

  before :each do
    @node = Node.new("Burke")
  end

  it 'exists' do
    expect(@node).to be_a Node
  end

  it 'has a surname' do
    expect(@node.surname).to eq("Burke")
  end

  it 'has no link by default' do
    expect(@node.next_node).to be_nil
  end

end
