#/spec/factories/users.rb
require 'faker'

FactoryGirl.define do
  factory :bet do |f|
    #f.winner "Anderson silva" 
    f.winner  { Faker::Name.name } 
  end
end
