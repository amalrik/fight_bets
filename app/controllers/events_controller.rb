class EventsController < ApplicationController
  load_and_authorize_resource

  before_filter :require_login, :except => [:index, :show]
  def index
    @events = Event.all
    if logged_in?
      @bet = Bet.new
      @bet.user_id = current_user.id
      @bets = current_user.bets
    end
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
