class BookingsController < ApplicationController

    def index
        bookings = Booking.all
        render json: bookings, except: [:created_at, :updated_at]
    end

    def update
        booking = current_account.booking.find(params[:id])
        booking.update!(booking_params)
      end

    def booking_params
        params.require(:booking).permit(:name, :age, :rating, :comment)
    end

end
