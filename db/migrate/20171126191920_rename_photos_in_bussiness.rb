class RenamePhotosInBussiness < ActiveRecord::Migration
  def change
    rename_column :bussinesses, :photos, :imgs
  end
end
