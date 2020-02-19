class Review < ApplicationRecord
  RATING = 0, 1, 2, 3, 4, 5
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
end
