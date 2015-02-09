class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

    def index
      @locations = Location.all
    end

    def new
      @location = Location.new
    end

    def create
      @location = Location.new(location_params)
      if @location.save
      redirect_to @location
        else
          render @location
      end
    end

    def show
      @location = Location.find(params[:id])
    end

    private
    def set_elocation
      @location = Location.find(params[:id])
    end

    def location_params
       params.require(:location).permit(:name, :address, :zip_code)
    end
end
