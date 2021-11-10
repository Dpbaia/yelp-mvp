class Review < ApplicationRecord
  RATINGS = (0..5).to_a

  belongs_to :restaurant

  validates :rating, presence: true, numericality: { only_integer: true }, inclusion:
  { in: RATINGS, message: 'Provide a number between 0 and 5' }
  validates :content, presence: true
end
