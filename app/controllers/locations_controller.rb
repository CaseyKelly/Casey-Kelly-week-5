class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

    def index
      @locations = Location.all
    end

    def new
      @location = Location.new
      @submit_name = "Create Location"
    end

    def edit
      @submit_name = "Update Location"
    end

    def create
      @location = Location.new(location_params)
      if @location.save
      redirect_to locations_path
        else
          render @location
      end
    end

    def show
    end

    def destroy
      @location.destroy
      redirect_to locations_url, notice: 'Project was successfully deleted.'
    end

    private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
       params.require(:location).permit(:name, :address, :zipcode)
    end
end
