class FightsController < ApplicationController
  def index
    @events = Event.all
    @fights = Fight.all
  end

  def new
    @fight = Fight.new
  end

  def create
    event_id = params[:fight].delete(:event_id)
    @fight = Fight.new(params[:fight])
    @fight.event_id = event_id

    puts "event_id #{event_id}"

    @fight.save

    redirect_to event_path(@fight.event)
   # @fight = Fight.new
   # @fight.category   = params[:fight][:category]
   # @fight.contender  = params[:fight][:contender]
   # @fight.challenger = params[:fight][:challenger]
   # @fight.save

   # redirect_to fights_path
  end

end
