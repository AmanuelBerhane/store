class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product

  validates :customer, presence: true
  validates :product, presence: true
  before_create :set_order_date
  def set_order_date
    @order_date = Date.today
  end

end
