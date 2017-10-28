class Order < ActiveRecord::Base
  has_many :orderlines
  belongs_to :user
  
end
