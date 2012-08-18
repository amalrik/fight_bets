class FightsController < ApplicationController
  def index
    @fights = Fight.all
  end

  def new
    @fight = Fight.new
  end

  def create
    @fight = Fight.new
    @fight.category   = params[:fight][:category]
    @fight.contender  = params[:fight][:contender]
    @fight.challenger = params[:fight][:challenger]
    @fight.save

    redirect_to fights_path
  end
end
