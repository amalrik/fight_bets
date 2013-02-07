#spec/models/bet.rb
require 'spec_helper'

describe User do
  it "Possui uma factory valida" do
    FactoryGirl.create(:user).should be_valid
  end
  #it "Invalido sem usename"
  #it "Invalido sem email"
end
