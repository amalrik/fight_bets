class Bet < ActiveRecord::Base
  attr_accessible :winner, :user, :fight
  validates :fight, :presence => true
  validates :winner, :presence => true

  belongs_to :user
  belongs_to :fight
  validates_uniqueness_of :fight_id, :scope => :user_id
end
