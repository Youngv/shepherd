require './poker'
describe Poker do
  it "should have 52 cards when it receives generate_cards message" do
    poker = Poker.new
    cards = poker.generate_cards
    cards.length.should == 52
  end

  it "should have shuffled when it receives shuffle_cards message" do
    pending
  end

  it "should deal to each player 13 cards when it receives deal_cards message" do
    pending
  end
end