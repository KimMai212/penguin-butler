class Butler < ApplicationRecord
  #geocoded_by :address
  #after_validation :geocode, if: :address_changed?
  has_many :bookings, dependent: :destroy
  #has_many :reviews, through: :bookings
  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :picture, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
