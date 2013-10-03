class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  attr_accessible :first_name, :last_name, :email, :password
  has_many :projects
  has_many :pledges

  validates_presence_of :first_name, :on => :create
  validates_presence_of :last_name, :on => :create
  validates_presence_of :email, :on => :create
  validates_presence_of :password, :on => :create

  def name
  	first_name + last_name
  end
end
