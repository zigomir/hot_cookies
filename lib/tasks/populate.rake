namespace :db do
  desc 'Erase and fill database with fixtures data'

  task :populate => :environment do

    # delete all on every model
    [Cookie, CookieIngredient, Ingredient].each(&:delete_all)

    10.times do |n|
      stock = n % 2 == 0 ? 1 : 0
      ingredient = Ingredient.create(mass: n + 5, name: "Ingredient #{n.to_s}", price: n, stock: stock)
      cookie = Cookie.create(name: "Cookie number #{n.to_s}", price: n + 10)
      cookie.ingredients << ingredient
      cookie.save
    end

  end

  task :reset_and_populate => :environment do
    %w{db:drop db:create db:migrate db:populate}.each do |task|
      Rake::Task[task].execute
    end
  end

end