class Order < ActiveRecord::Base
  attr_accessible :cookie_mass, :customer_email, :price

  validates :customer_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }

  has_many :cookie_orders
  has_many :cookies, :through => :cookie_orders, :source => :cookie
end
