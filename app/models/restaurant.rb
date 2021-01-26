class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "Must be either chinese, italian, japanese, french, or belgian"}
end
