class Beer < ActiveRecord::Base
  attr_accessible :abv, :price, :type

  validates_presence_of :abv
  validates_presence_of :price
  validates_presence_of :type
end
