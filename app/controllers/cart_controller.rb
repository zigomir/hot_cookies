# encoding: utf-8

class CartController < ApplicationController

  def index
    @order = Order.new
  end

  def remove_item
  end

  def add_order
    @order = Order.new(params[:order])

    cart.cookies.each do |cookie|
      @order.cookies << cookie
    end

    if @order.save
      cart.clear
      redirect_to root_path, :notice => 'Vaše naročilo je bilo uspešno oddano' # TODO izpiši na root-u
    else
      render :index
    end
  end

end
