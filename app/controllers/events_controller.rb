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
    #raise params.inspect
    @event = Event.new
    @event.title = params[:event][:title]
    @event.when = Date.parse("#{params[:start_date][:day]} #{params[:start_date][:month]} #{params[:start_date][:year]}")
    @event.save
    redirect_to event_path(@event)
  end
end
