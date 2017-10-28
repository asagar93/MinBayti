class CreateOrderlines < ActiveRecord::Migration
  def change
    create_table :orderlines do |t|
      t.integer :idfood
      t.integer :idorder
      t.integer :quantity
      t.float :cost
      t.text :comment

      t.timestamps null: false
    end
  end
end
