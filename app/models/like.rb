class Like < ActiveRecord::Base
  attr_accessible nil

  validates_presence_of :user_id
  validates_presence_of :likeable_id

  belongs_to :user
  belongs_to :likeable, polymorphic: true
end
