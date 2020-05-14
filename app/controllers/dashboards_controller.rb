class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # @bookings = Booking.all
    @bookings = Booking.where(user_id: current_user.id)
    @past_bookings = @bookings.where("end_date < ?", DateTime.now.in_time_zone)
    @upcoming_bookings = @bookings.where("end_date >= ?", DateTime.now.in_time_zone)
  end
end
