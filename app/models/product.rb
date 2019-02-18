class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :photo, :price, :address, presence: true
  mount_uploader :photo, PhotoUploader
end
