class BookingsController < ApplicationController

    def index
        bookings = Booking.all
        render json: bookings, except: [:created_at, :updated_at]
    end

end
