class CreateCookieOrders < ActiveRecord::Migration
  def change
    create_table :cookie_orders do |t|
      t.references :cookie
      t.references :order
      t.integer :cookie_mass

      t.timestamps
    end
    add_index :cookie_orders, :cookie_id
    add_index :cookie_orders, :order_id
  end
end
