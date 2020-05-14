class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # @bookings = Booking.all
    @bookings = Booking.where(user_id: current_user.id)
    @past_bookings = []
    @upcoming_bookings = []
    @bookings.each do |b|
     @past_bookings << b if b.end_date < DateTime.now.in_time_zone
     @upcoming_bookings << b if b.end_date > DateTime.now.in_time_zone
    end
  end
end
