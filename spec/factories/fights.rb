#/spec/factories/fights.rb
require 'faker'

FactoryGirl.define do
  factory :fight do |f|
    f.contender  { Faker::Name.name } 
    f.challenger { Faker::Name.name } 
    f.category   %w{mosca galo pena leve meio-medio medio meio-pesado pesado}.shuffle[0]
  end
end
