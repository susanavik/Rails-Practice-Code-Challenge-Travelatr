class DestinationsController < ApplicationController
    def index
        @destinations = Destination.all 
    end

    def show 
        @destination = Destination.find(params[:id])
        @destinations = Destination.includes(:comments).order("created_at").limit(5)

    end

    

end