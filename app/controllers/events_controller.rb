class EventsController < ApplicationController
  load_and_authorize_resource

  before_filter :require_login, :except => [:show]
  def index
    @events = Event.includes(:fights, {:fights => :bets}, :fights => :result).all
    if logged_in?
      @bet = Bet.new
      @bet.user_id = current_user.id
      @current_user_bets = current_user.bets.includes(:fight)
    end 
  end

  def show
    @event = Event.includes(:fights).find(params[:id])
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
