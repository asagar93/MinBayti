class Bussiness < ActiveRecord::Base
  has_many :foods 
  belongs_to :user
end
