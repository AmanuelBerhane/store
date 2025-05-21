class Product < ApplicationRecord
  has_many :orders
  belongs_to :category
  has_many_attached :images


  enum :gender, { male: 0, female: 1, unisex: 2 }

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :gender, presence: true
  validates :description ,presence: true, length: { maximum: 250 }
  validates :image, presence: true


end

