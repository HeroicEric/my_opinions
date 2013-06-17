class Beer < ActiveRecord::Base
  attr_accessible :abv, :price, :style

  validates_presence_of :abv
  validates_presence_of :price
  validates_presence_of :style
end
