class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, inclusion: 0..5, presence: true, numericality: { only_integer: true }
  validates :restaurant_id, presence: true
  belongs_to :restaurant
end
