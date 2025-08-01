class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  validates :customer, presence: true

  before_create :set_order_date
  def set_order_date
    @order_date = Date.today
  end

end
