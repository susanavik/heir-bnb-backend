class BookingsController < ApplicationController

    def index
        bookings = Booking.all
        render json: bookings, except: [:created_at, :updated_at]
    end

    def create 
        booking = Booking.new(booking_params)
        render json: booking
    end

    def update
        booking = booking.find(params[:id])
        booking.update!(booking_params)
    end

    def destroy
        booking = booking.find(params[:id])
        booking.destroy
    end

    def booking_params
        params.require(:booking).permit(:listing_id, :guest_id, :rating, :review)
    end

end
