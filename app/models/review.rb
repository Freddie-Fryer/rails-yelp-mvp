class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5),
    message: "Must be 0, 1, 2, 3, 4, or 5." }, numericality: { only_integer: true }
end
