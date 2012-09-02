class Bet < ActiveRecord::Base
  attr_accessible :winner

  belongs_to :user
  has_one :fight
end
