class Cart

  def initialize(session)
    @session = session
    @session[:cookie_ids] ||= []
  end

  def add_to_cart(cookie)
    @session[:cookie_ids] << cookie.id unless @session[:cookie_ids].include? cookie.id
  end

  def cookies
    @cookies = Cookie.find(@session[:cookie_ids])
  end

  def clear
    @session[:cookie_ids] = []
  end

end