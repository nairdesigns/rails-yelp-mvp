class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, exclusion: { in: %w[neptunian] }
  has_many :reviews, dependent: :destroy
end
