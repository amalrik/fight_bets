#/spec/factories/users.rb
require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.username  { Faker::Name.name } 
    f.email     { Faker::Internet.email } 
    f.password  "teste" 
  end
end
