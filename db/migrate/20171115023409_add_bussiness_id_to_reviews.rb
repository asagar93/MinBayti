class AddBussinessIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :bussiness_id, :integer
  end
end
