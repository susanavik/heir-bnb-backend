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

    def create 
        listing = Listing.new(listing_params)
        render json: listing
    end

    def update
        listing = listing.find(params[:id])
        listing.update!(listing_params)
    end

    def destroy
        listing = listing.find(params[:id])
        listing.destroy
    end

    def listing_params
        params.require(:listing).permit(:rating, :review)
    end

end
