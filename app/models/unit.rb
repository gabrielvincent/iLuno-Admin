class Unit < ActiveRecord::Base
  attr_accessible :name

  has_many :series
  has_many :groups
  has_many :lectures
end
