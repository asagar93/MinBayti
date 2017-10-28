class Food < ActiveRecord::Base
  belongs_to :bussiness
  belongs_to :category 
end
