class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # When we destroy the restaurant we destroy the reviews that are linked to
  # that restaurant.
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
