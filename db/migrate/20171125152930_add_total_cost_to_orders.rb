class AddTotalCostToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_cost, :float
  end
end
