class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :number_of_guests, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..5 }
  validates :price_per_night, presence: true, numericality: { only_integer: true }, inclusion: {in: 6_000..42_000}
  validates :image_url, presence: true
end
