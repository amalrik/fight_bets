#spec/models/bet.rb
require 'spec_helper'

describe Bet do
  it "has a valid factory" do
    FactoryGirl.create(:bet).should be_valid
  end

  it "is invalid to bet twice in a same fight" do
    some_user  = FactoryGirl.create(:user)
    some_fight = FactoryGirl.create(:fight)
    #some_bet   = Bet.create(:user => some_user, :fight => some_fight, :winner => some_fight.contender)
    FactoryGirl.create(:bet, user: some_user, fight: some_fight, winner: some_fight.contender)
    FactoryGirl.build(:bet, 
      user: some_user, fight: some_fight, winner: some_fight.contender).should_not be_valid
  end

  it "is invalid without a fight" do
    some_user  = FactoryGirl.create(:user)
    FactoryGirl.build(:bet, 
      user: some_user, fight: nil, winner: "Who cares").should_not be_valid
     
  end

  it "is invalid without a winner" do
    FactoryGirl.build(:bet, winner: nil).should_not be_valid
  end
end
