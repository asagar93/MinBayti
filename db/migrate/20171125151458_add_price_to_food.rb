class AddPriceToFood < ActiveRecord::Migration
  def change
    add_column :foods, :price, :float
  end
end
