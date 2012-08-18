class Result < ActiveRecord::Base
  attr_accessible :method, :round, :winner

  belongs_to :fight
end
