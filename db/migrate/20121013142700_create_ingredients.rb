class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :stock
      t.integer :mass
      t.float :price

      t.timestamps
    end
  end
end
