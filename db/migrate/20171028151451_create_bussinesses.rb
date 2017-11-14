class CreateBussinesses < ActiveRecord::Migration
  def change
    create_table :bussinesses do |t|
      t.integer :iduser
      t.string :name
      t.float :ratings
      t.text :reviews
      t.string :photos
      t.string :instalink

      t.timestamps null: false
    end
  end
end
