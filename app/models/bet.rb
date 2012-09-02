class Bet < ActiveRecord::Base
  attr_accessible :winner

  belongs_to :user, :fight
  has_one :fight
end
