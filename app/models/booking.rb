class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :start_day, :end_day, presence: true
end
