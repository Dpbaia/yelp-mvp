class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES,
                                                    message: 'This is not a valid category' }

end
