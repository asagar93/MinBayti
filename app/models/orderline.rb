class Orderline < ActiveRecord::Base
  has_one :order
  belongs_to :confirmed_order
  belongs_to :food
end
