class HomeController < ApplicationController

  def index
    @cookies = Cookie.all(:joins => [:ingredients], :conditions => ['ingredients.stock > 0'])
  end

end
