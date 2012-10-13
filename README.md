Hot cookies
====


Prvi koraki
---

    gem install rails
    rails new hot_cookies
    cd hot_cookies
    rails server (rails s)

    # open http://localhost:3000

    rm public/index.html

Shranjevanje podatkov v modele (podatkovno bazo) - M
---

    rails generate
    rails g model cookie name stock:integer price:float
    rails g model ingredient name stock:integer mass:integer price:float
    rails g model cookie_ingredient cookie:references ingredient:references
    # look at models and migrations
    rake db:migrate

Konzola
---

    rails console (rails c)
    Cookie.all
    Cookie.create(:name => "Vroč piškot", :stock => 10, :price => 1)
    Cookie.all

    Ingredient.create(:name => "Moka", :stock => 100, :mass => 1000, :price => 0.10)
    Ingredient.all

Asociacije med modeli
---

    # app/models/cookie.rb
    has_many :cookie_ingredients
    has_many :ingredients, :through => :cookie_ingredients, :source => :ingredients

    # app/models/ingredient.rb
    has_many :cookie_ingredients
    has_many :cookies, :through => :cookie_ingredients, :source => :cookie

    hot_cookie = Cookie.find(1)
    flour = Ingredient.find_by_name("Moka")
    flour.cookies << hot_cookie

    flour.cookies
    hot_cookie.ingredients

Kontrollerji in pogledi - V in C
---


    rails generate
    rails g controller -h
    rails g controller Cookies index

    # config/routes.rb
    get 'cookies' => 'cookies#index'
    # open http://localhost:3000/cookies

    # app/controllers/cookies_controller.rb
    def index
      @test = 'hehe'
    end

    $ app/views/cookies/index.html.erb
    <p><%= @test %></p>

