class DashboardsController < ApplicationController
    skip_before_action :authenticate_user!
    def index
        @bookings = Booking.all
    end

  end
  