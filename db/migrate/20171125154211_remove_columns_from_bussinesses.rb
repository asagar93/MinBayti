class RemoveColumnsFromBussinesses < ActiveRecord::Migration
  def change
    remove_column :bussinesses, :reviews, :text
    remove_column :bussinesses, :ratings, :float
  end
end
