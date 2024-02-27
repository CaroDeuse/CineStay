class Villa < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :movie_genre, presence: true
  validates :description, presence: true, length: { minimum: 25 }
  validates :price_per_night, numericality: { only_integer: true }
  validates :guests_number, numericality: { only_integer: true }
end
