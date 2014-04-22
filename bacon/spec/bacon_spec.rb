require 'bacon'

describe Bacon do
  it "is edible" do
    expect(Bacon.new.edible?).to be_true
  end
end
