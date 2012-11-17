class HomeController < ApplicationController

  def index
    @cookies = Cookie.all(limit: 5)
  end

end
