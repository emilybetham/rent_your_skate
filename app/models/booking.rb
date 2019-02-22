class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :start_day, :end_day, presence: true
  validates_length_of :message, :maximum=>150
end
