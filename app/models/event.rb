class Event < ActiveRecord::Base
  attr_accessible :title, :when

  has_many :fights
end
