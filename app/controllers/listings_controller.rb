class ListingsController < ApplicationController
    def index
        listings = Listing.all 
        render json: listings, except: [:created_at, :updated_at]
    end

end
