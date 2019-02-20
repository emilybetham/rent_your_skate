class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :photo, :price, :address, presence: true
  validates :category, inclusion: { in: ["skateboard", "bike", "scooter", "roller skates", "swim"] }
  mount_uploader :photo, PhotoUploader
end
