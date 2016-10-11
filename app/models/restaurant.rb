class Restaurant < ApplicationRecord
  validates :name, :address, :star,  presence: true
  validates :star, numericality: { less_than_or_equal_to: 5 }
end
