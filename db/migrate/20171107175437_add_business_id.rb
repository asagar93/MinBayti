class AddBusinessId < ActiveRecord::Migration
  def change
    add_column :foods, :bussiness_id, :integer
  end
end
