class RenameAllForeignKeyColumnsCorrectly < ActiveRecord::Migration
  def change
    rename_column :foods, :idcategory, :category_id
    rename_column :orderlines, :idfood, :food_id
    rename_column :orderlines, :idorder, :order_id
    rename_column :orders, :iduser, :user_id

  end
end
