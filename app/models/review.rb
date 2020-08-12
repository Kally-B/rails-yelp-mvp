class Review < ApplicationRecord
  RATINGS = [ 0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATINGS, message: "%{value} must be a number between 0 and 5" }
end
