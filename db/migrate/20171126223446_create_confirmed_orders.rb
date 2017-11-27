class CreateConfirmedOrders < ActiveRecord::Migration
  def change
    create_table :confirmed_orders do |t|
      t.integer :user_id
      t.boolean :payment_method
      t.string :payment_status

      t.timestamps null: false
    end
  end
end
