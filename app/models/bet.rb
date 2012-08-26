class Bet < ActiveRecord::Base
  attr_accessible :fight_id, :user_id, :winner
end
