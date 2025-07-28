# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'User', type: :model do
  context 'is invalid with duplicate username, email and phone number' do
    before do
      @user = User.create(username: 'John Doe', email: 'email@example.com', phone_number: '912345678')
    end
    it 'is invalid with a duplicate username' do
      @user2 = User.create(username: 'John Doe')
      expect(@user).to_not be_valid
    end
    it 'is invalid with a duplicate email' do
      @user2 = User.create(email: 'email@example.com')
      expect(@user).to_not be_valid
    end
    it 'is invalid with a duplicate phone number' do
      @user2 = User.create(phone_number: 912345678)
      expect(@user).to_not be_valid
    end
  end
  it 'is invalid without a username' do
    @user = User.create(username: nil)
    expect(@user).to_not be_valid
  end
  it 'is invalid without an email' do
    @user = User.create(email: nil)
    expect(@user).to_not be_valid
  end
  it 'is invalid without a password' do
    @user = User.create(password: nil)
    expect(@user).to_not be_valid
  end
  it 'is invalid without a phone number' do
    @user = User.create(phone_number: nil)
    expect(@user).to_not be_valid
  end

  it 'is invalid if phone number is too short' do
    @user = User.create(phone_number: 91234 )
    expect(@user).to_not be_valid
  end
  it 'is invalid if phone number is too long' do
    @user = User.create(phone_number: 9123456789 )
    expect(@user).to_not be_valid
  end
end
