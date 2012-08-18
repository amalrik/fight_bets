class Fight < ActiveRecord::Base
  attr_accessible :contender, :challenger, :category

  has_one :result
end
