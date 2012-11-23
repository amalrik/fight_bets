class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  validates_confirmation_of :password, :message => "password e confirmação deve ser identicos", :if => :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validades_uniqueness_of :email

  has_many :bets
end
