class Bet < ActiveRecord::Base
  attr_accessible :winner

  belongs_to :user
  belongs_to :fight
end
