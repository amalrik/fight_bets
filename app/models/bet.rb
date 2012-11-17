class Bet < ActiveRecord::Base
  attr_accessible :winner

  belongs_to :user
  belongs_to :fight
  validates_uniqueness_of :fight_id, :scope => :user_id
end
