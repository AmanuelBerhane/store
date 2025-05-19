class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product

  validates :customer, presence: true
  validates :product, presence: true

end
