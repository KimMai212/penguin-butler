class BookingsController < ApplicationController
  before_action :set_booking, except: %i[create index]
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
      @butler = @booking.butler
    end

    def edit; end

    def update
      @booking.update(booking_params)
      if @booking.save!
        redirect_to booking_path(@booking)
      else
        render edit
      end
    end

    def destroy
      @booking.destroy
      redirect_to dashboard_path
    end

    private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :price, :status)
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end
end
