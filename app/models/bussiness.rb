class Bussiness < ActiveRecord::Base
  has_many :foods 
  belongs_to :user
  has_many :photos
  has_many :reviews
end
