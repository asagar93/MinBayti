class Food < ActiveRecord::Base
  belongs_to :bussiness
  belongs_to :category 
  def self.search(search)
  	where("category_id LIKE ?","%#{search}")
  end
  def self.search2(search)
  	where("bussiness_id LIKE ?","%#{search}")
  end
end