class ChangePhotoType < ActiveRecord::Migration
  def change
    change_column :bussinesses, :photos, :string, array: true , default: []
  end
end
