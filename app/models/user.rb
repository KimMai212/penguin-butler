class User < ApplicationRecord
    has_many :bookings, dependent: :destroy
    validates :name, presence: true, uniqueness: true
    validates :e_mail, presence: true, uniqueness: true
    validates :password, presence: true
end