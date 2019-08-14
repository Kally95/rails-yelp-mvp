class Review < ApplicationRecord
  belongs_to :restaurant


  validates :content, presence: true
  #content cannot be blank ^^^^
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }, presence: true
end
