class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :phone_number, presence: true, uniqueness: true, length: {is: 10}
end
