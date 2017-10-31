class AddField < ActiveRecord::Migration
  def change
    add_column :bussinesses, :description, :string
  end
end
