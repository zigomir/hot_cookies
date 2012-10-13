class CookieIngredient < ActiveRecord::Base
  belongs_to :cookie
  belongs_to :ingredient
  # attr_accessible :title, :body
end
