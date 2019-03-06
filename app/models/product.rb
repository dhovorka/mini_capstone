class Product < ApplicationRecord
validates :name, presence: true
validates :name, uniqueness: true

validates :price, presence: true
validates :price, numericality: { greater_than_or_equal_to: 0 }

validates :description, presence: true
validates :description, length: { minimum: 3 }
validates :description, length: { maximum: 400 }


def is_discounted?
  if price < 10
    true
  else
    false
  end
end

def tax
  (price * 0.09)
end 

def total
  total = (price * 0.09) + price
end 
  
end