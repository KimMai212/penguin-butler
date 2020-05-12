class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :butler
    validates :start_date, presence: true
    validates :end_date, presence: true

    validates :status, inclusion: { in: ["Pending user request", "Pending host validation", "Confirmed", "Canceled"], allow_nil: true }
end