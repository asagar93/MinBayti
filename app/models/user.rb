class User < ActiveRecord::Base
  has_one :bussiness
  has_many :orders
end
