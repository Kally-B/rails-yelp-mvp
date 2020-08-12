class Restaurant < ApplicationRecord
  CUISINES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CUISINES, message: "%{value} is not included in the list" }
end
