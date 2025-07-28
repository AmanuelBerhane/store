# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Customer' do
  it 'is invalid without a name' do
    @customer = Customer.create(name: nil)
    expect(@customer).to_not be_valid
  end
  it 'is invalid without a phone number' do
    @customer = Customer.create( name: 'customer', phone_number: nil)
    expect(@customer).to_not be_valid
  end
  it 'is invalid with a duplicate phone number' do
    @customer = Customer.create(name: 'customer', phone_number: '912345678')
    @customer2 = Customer.create(name: 'customer2', phone_number: '912345678')
    expect(@customer2).to_not be_valid
  end
  it 'is invalid if phone number is too short' do
    @customer = Customer.create(name: 'customer', phone_number: '123456')
    expect(@customer).to_not be_valid
  end
  it 'is invalid if phone number is too long' do
    @customer = Customer.create(name: 'customer', phone_number: '12345678910')
    expect(@customer).to_not be_valid
  end
end
