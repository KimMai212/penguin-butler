class ButlersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[search show]
  def show
    @butler = Butler.find(params[:id])
    @booking = Booking.new
  end

  def search
    @butlers = Butler.all
  end
end
