class Restaurant < ApplicationRecord
  NAME = "chinese", "italian", "japanese", "french", "belgian"
  has_many :reviews, dependent: :destroy
  validates :address, :name, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
