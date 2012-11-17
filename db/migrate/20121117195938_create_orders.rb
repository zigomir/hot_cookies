class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :price
      t.string :customer_email

      t.timestamps
    end
  end
end
