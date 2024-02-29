class Villa < ApplicationRecord
  MOVIE_GENRE = ["Action", "Adventure", "Animation", "Fantasy", "Horror", "Sci-Fi", "Thriller", "Western"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :movie_genre, presence: true, inclusion: { in: MOVIE_GENRE }
  validates :description, presence: true, length: { minimum: 25 }
  validates :price_per_night, numericality: { only_integer: true }
  validates :guests_number, numericality: { only_integer: true }
  validates :inspired_by, presence: true
  has_one_attached :photo
end
