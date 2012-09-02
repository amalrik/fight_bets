#encoding: utf-8
class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  validates_confirmation_of :password, :message => "password e confirmação deve ser identicos", :if => :password

  has_many :bets
end
