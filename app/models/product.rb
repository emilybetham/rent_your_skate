class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :category, :photo, :price, :address, presence: true
  validates :category, inclusion: { in: ["skateboard", "bike", "scooter", "roller skates"] }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
end
