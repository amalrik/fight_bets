#spec/models/bet.rb
require 'spec_helper'

describe User do
  it "Possui uma factory valida" do
    FactoryGirl.create(:user).should be_valid
  end
  it "invalido em caso de email duplicado" do
    FactoryGirl.create(:user, email: "amal@test.com")
    FactoryGirl.build(:user, email: "amal@test.com").should_not be_valid
  end
  it "Invalido sem usename" do
    FactoryGirl.build(:user, username: nil).should_not be_valid
  end

  it "Invalido sem email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
end
