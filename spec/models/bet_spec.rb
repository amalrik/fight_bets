#spec/models/bet.rb
require 'spec_helper'

describe Bet do
  it "Possui uma factory valida" do
    FactoryGirl.create(:bet).should be_valid
  end
end
