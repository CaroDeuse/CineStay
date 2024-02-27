class Villa < ApplicationRecord
  MOVIE_GENRE = ["Action", "Comedy", "Drama", "Fantasy", "Horror", "Sci-Fi", "Romance", "Thriller", "Documentary", "Animation"]
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :movie_genre, presence: true, inclusion: { in: MOVIE_GENRE }
  validates :description, presence: true, length: { minimum: 25 }
  validates :price_per_night, numericality: { only_integer: true }
  validates :guests_number, numericality: { only_integer: true }
  has_one_attached :photo
end
