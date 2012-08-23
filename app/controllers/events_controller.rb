class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @fight = Fight.new
    @fight.event_id = @event.id
  end

  def new
    @event = Event.new
  end

  def create
  end
end
