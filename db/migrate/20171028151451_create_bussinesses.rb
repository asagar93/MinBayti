class CreateBussinesses < ActiveRecord::Migration
  def change
    create_table :bussinesses do |t|
      t.integer :user_id
      t.string :name
      t.float :ratings
      t.text :reviews
      t.string :imgs
      t.string :instalink

      t.timestamps null: false
    end
  end
end
