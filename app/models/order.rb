class Order < ActiveRecord::Base
  has_many :orderlines, dependent: :destroy
  belongs_to :user
  
end
