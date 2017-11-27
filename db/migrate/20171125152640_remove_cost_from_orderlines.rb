class RemoveCostFromOrderlines < ActiveRecord::Migration
  def change
    remove_column :orderlines, :cost, :float
  end
end
