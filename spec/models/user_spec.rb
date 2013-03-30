#spec/models/bet.rb
require 'spec_helper'

describe User do
  it "has a valid Factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid with a duplicated email" do
    FactoryGirl.create(:user, email: "amal@test.com")
    FactoryGirl.build(:user, email: "amal@test.com").should_not be_valid
  end
  it "is invalid without a username" do
    FactoryGirl.build(:user, username: nil).should_not be_valid
  end

  it "is invalid without an email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
end
