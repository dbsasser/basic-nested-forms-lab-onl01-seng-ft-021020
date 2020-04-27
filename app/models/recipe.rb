class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nest_attributes_for :ingredients
end
