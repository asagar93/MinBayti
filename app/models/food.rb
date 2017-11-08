class Food < ActiveRecord::Base
  belongs_to :bussiness
  belongs_to :category
  
  scope :byBusiness, -> (id) {where(:bussiness_id => id)} 
end
