class Booking < ApplicationRecord
  belongs_to :villa
  belongs_to :user
  validates :end_date, comparison: { greater_than: :start_date }
  validates :start_date, comparison: { greater_than: Date.today }
end
