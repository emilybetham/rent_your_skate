class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  has_many :products
  has_many :bookings
  has_many :bookings_as_owner, through: :products, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
