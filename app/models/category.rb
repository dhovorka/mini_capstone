class Category < ApplicationRecord
  has_many :products, through: :categoryproduct
  has_many :categoryproduct
end
