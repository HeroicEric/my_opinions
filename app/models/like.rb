class Like < ActiveRecord::Base
  validates_presence_of :user_id
  validates_presence_of :racecar_id

  belongs_to :user
  belongs_to :racecar
end
