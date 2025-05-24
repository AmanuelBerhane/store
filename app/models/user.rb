class User < ApplicationRecord

  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest , length: { minimum: 6 }
  validates :phone_number, presence: true, uniqueness: true, length: {is: 9}

end
