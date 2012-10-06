class EventsController < ApplicationController
  before_filter :require_login, :except => [:new, :create]
  def index
    @events = Event.all
    @bet = Bet.new
    @bet.user_id = current_user.id
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
