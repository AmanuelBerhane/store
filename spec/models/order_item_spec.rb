require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it 'is invalid without a quantity' do
    @order_item = OrderItem.new(quantity: nil)
    expect(@order_item).not_to be_valid
  end
end
