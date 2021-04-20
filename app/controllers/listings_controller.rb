class ListingsController < ApplicationController
    def index
        listings = Listing.all 
        render json: listings, except: [:created_at, :updated_at]
    end

    def show
        listing = Listing.find(params[:id])
        if listing
            render json: listing
        else
            render json: { error: "Not found!" }, status: 404
        end
    end

end
