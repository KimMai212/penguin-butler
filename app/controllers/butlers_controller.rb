class ButlersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[search show]
  def show
    @butler = Butler.find(params[:id])
    @booking = Booking.new
  end

  def search
    if params[:query].present?
      @butlers = Butler.where("city ILIKE ?", "%#{params[:query]}%")

    else
      @butlers = Butler.all
    end
  end

  private

  def butler_params

  end
end
