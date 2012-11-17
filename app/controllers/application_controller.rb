class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :cart

  def cart
    @cart ||= Cart.new(session)
  end

end
