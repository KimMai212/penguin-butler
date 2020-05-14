class BookingsController < ApplicationController
   def create
      @butler = Butler.find(params[:booking][:butler_id])
      @booking = Booking.new(booking_params)
      @booking.butler = @butler
      @booking.user = current_user
      @booking.status = "Pending host validation"
      if @booking.end_date && @booking.start_date
        @booking.price = (@booking.end_date - @booking.start_date).to_f * @booking.butler.price.to_f
      else
        @booking.price = @butler.price
      end
      if @booking.save
        redirect_to dashboard_path
      else
        redirect_to butler_path(@butler)
      end
    end

    def index
      @bookings = Booking.where(user_id: current_user.id)
    end

    def show
      set_booking
      @butler = @booking.butler
    end

    def update
      set_booking
      @booking.status = "Pending host validation"
      @booking.save!
      redirect_to booking_path(@booking)
    end

    def destroy
      set_booking
      @booking.destroy
      redirect_to root_path
    end

    private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :price, :status)
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end

  private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date)
    end
end
