class CreateCookieIngredients < ActiveRecord::Migration
  def change
    create_table :cookie_ingredients do |t|
      t.references :cookie
      t.references :ingredient

      t.timestamps
    end
    add_index :cookie_ingredients, :cookie_id
    add_index :cookie_ingredients, :ingredient_id
  end
end
