class Customer < ApplicationRecord
  has_many :orders

  validates :name, presence: true
  validates :phone_number, presence: true, uniqueness:true , length: {is: 10}

end
