class Ingredient < ActiveRecord::Base
  attr_accessible :mass, :name, :price, :stock

  has_many :cookie_ingredients
  has_many :cookies, :through => :cookie_ingredients, :source => :cookie
end
