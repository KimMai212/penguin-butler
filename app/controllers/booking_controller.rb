class BookingsController < ApplicationController

    def create
      @penguin = Penguin.find(params[:penguin_id])
      @booking = Booking.new(booking_params)
      @booking.penguin = @penguin
      @booking.user = current_user
      @booking.status = "Pending host validation"
      if @booking.end_date && @booking.start_date
        @booking.value = (@booking.end_date - @booking.start_date).to_f * @booking.penguin.price.to_f
      else
        @booking.value = 0
      end
      if @booking.save
        redirect_to booking_path(@booking)
      else
        redirect_to penguin_path(@penguin)
      end
    end
  
    def index
      @bookings = Booking.where(user_id: current_user.id)
      
    end
  
    def show
      set_booking
      @penguin = @booking.penguin
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
  
  end