class Butler < ApplicationRecord
    has_many :bookings
    validates :description, presence: true
    validates :name, presence: true
    validates :price, presence: true
end
