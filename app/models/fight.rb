class Fight < ActiveRecord::Base
  attr_accessible :contender, :challenger, :category

  has_one :result
  belongs_to :event
  has_many :bets

end
