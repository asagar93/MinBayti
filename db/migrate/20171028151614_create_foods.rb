class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :idcategory
      t.string :name

      t.timestamps null: false
    end
  end
end
