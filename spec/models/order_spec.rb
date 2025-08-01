# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    @customer = Customer.create!(name: 'John Doe', phone_number: '123456789')
    @product = Product.create!(name: 'Test Product', price: 10.0)
  end

  it 'is valid with a customer' do
    order = Order.new(customer: @customer)
    expect(order).to be_valid
  end

  it 'is invalid without a customer' do
    order = Order.new(customer: nil)
    expect(order).to_not be_valid
  end

  it 'has many order items' do
    order = Order.new(customer: @customer)
    expect(order).to respond_to(:order_items)
  end

  it 'has many products through order items' do
    order = Order.new(customer: @customer)
    expect(order).to respond_to(:products)
  end

  it 'sets the order date before creation' do
    order = Order.create(customer: @customer)
    expect(order.order_date).to eq(Date.today)
  end
end
