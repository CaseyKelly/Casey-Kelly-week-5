class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

    def index
      @events = Event.all
    end

    def new
      @event = Event.new
    end

    def create
      @event = Event.new(event_params)
      if @event.save
      redirect_to @event
        else
          render @event
      end
    end

    def show
      @event = Event.find(params[:id])
    end

    private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
       params.require(:event).permit(:description, :date, :requires_id, :location_id)
    end
end
