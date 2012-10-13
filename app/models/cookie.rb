class Cookie < ActiveRecord::Base
  attr_accessible :name, :price, :stock

  has_many :cookie_ingredients
  has_many :ingredients, :through => :cookie_ingredients, :source => :ingredient
end
