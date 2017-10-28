class RenameIduserToUserId < ActiveRecord::Migration
  def change
    rename_column :bussinesses, :iduser, :user_id
  end
end
