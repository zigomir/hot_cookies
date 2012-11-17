namespace :db do
  desc 'Erase and fill database with fixtures data'

  task :populate => :environment do

    # delete all on every model
    [Cookie, CookieIngredient, Ingredient].each(&:delete_all)

    10.times do |n|
      Cookie.create(name: "Cookie number #{n.to_s}", price: n + 10, stock: n)
    end

  end

end