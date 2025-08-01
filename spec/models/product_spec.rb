# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @category = Category.create!(name: 'Test Category')
  end

  it 'is valid with valid attributes' do
    product = Product.new(
      name: 'Test Product',
      price: 10.0,
      category: @category,
      gender: 'unisex',
      description: 'This is a test product.'
    )
    expect(product).to be_valid
  end

  it 'is invalid without a name' do
    product = Product.new(name: nil)
    expect(product).to_not be_valid
  end

  it 'is invalid without a price' do
    product = Product.new(price: nil)
    expect(product).to_not be_valid
  end

  it 'is invalid without a category' do
    product = Product.new(category: nil)
    expect(product).to_not be_valid
  end

  it 'is invalid without a gender' do
    product = Product.new(gender: nil)
    expect(product).to_not be_valid
  end

  it 'is invalid without a description' do
    product = Product.new(description: nil)
    expect(product).to_not be_valid
  end

  it 'is invalid if the description is too long' do
    product = Product.new(description: 'a' * 251)
    expect(product).to_not be_valid
  end

  it 'has many orders' do
    product = Product.new
    expect(product).to respond_to(:orders)
  end

  it 'belongs to a category' do
    product = Product.new
    expect(product).to respond_to(:category)
  end

  it { is_expected.to have_many_attached(:images) }

  it 'is invalid without images' do
    product = Product.new(
      name: 'Test Product',
      price: 10.0,
      category: @category,
      gender: 'unisex',
      description: 'This is a test product.'
    )
    product.images.detach
    expect(product).to_not be_valid
  end
end
