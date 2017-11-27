class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :iduser
      t.boolean :payment_method
      t.date :date_created
      t.date :date_delivered
      t.date :date_paid

      t.timestamps null: false
    end
  end
end
