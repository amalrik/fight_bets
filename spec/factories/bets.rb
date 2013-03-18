#/spec/factories/users.rb
require 'faker'

FactoryGirl.define do
  factory :bet do |b|
    association :user
    association :fight
    b.winner  { Faker::Name.name } 
  end
end
