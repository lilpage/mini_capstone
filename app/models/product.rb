class Product < ApplicationRecord
  belongs_to :category_product
  belongs_to :supplier
  has_many :orders
  has_many :categories, through: :category_product
end
