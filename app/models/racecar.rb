class Racecar < ActiveRecord::Base
  attr_accessible :color, :crash_test_rating, :name, :top_speed

  validates_presence_of :color
  validates_presence_of :crash_test_rating
  validates_presence_of :name
  validates_presence_of :top_speed

  has_many :likes,
    inverse_of: :racecar,
    dependent: :destroy
end
