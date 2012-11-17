class CookiesController < ApplicationController

  def show
     @cookie = Cookie.find(params[:id], :include => :ingredients)
  end

  def add_to_cart
    cookie = Cookie.find(params[:id])
    cart.add_to_cart(cookie)

    redirect_to root_path
  end

end
