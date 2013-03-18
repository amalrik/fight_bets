#spec/models/bet.rb
require 'spec_helper'

describe Bet do
  it "Possui uma posta valida->factory" do
    FactoryGirl.create(:bet).should be_valid
  end

  it "O mesmo usuario nao pode apostar mais de uma vez numa mesma luta" do
    some_user  = FactoryGirl.create(:user)
    some_fight = FactoryGirl.create(:fight)
    #some_bet   = Bet.create(:user => some_user, :fight => some_fight, :winner => some_fight.contender)
    FactoryGirl.create(:bet, user: some_user, fight: some_fight, winner: some_fight.contender)
    FactoryGirl.build(:bet, 
      user: some_user, fight: some_fight, winner: some_fight.contender).should_not be_valid
  end

  it "Nao e possivel apostar numa luta que nao existe" do
    some_user  = FactoryGirl.create(:user)
    FactoryGirl.build(:bet, 
      user: some_user, fight: nil, winner: "Who cares").should_not be_valid
     
  end
end
