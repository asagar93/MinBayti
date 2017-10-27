class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.integer :type
      t.integer :points
      t.integer :nooforders
      t.string :email
      t.date :dob
      t.string :gender
      t.integer :phone
      t.string :address
      t.integer :tokens

      t.timestamps null: false
    end
  end
end
