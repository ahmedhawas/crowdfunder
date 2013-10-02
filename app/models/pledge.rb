class Pledge < ActiveRecord::Base
  attr_accessible :amount, :project_id, :user_id

  validates_presence_of :user, :project
  validates :amount, :numericality => { :greater_than_or_equal_to => 0 }

  belongs_to :user
  belongs_to :project

end
