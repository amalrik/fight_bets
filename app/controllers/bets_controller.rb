class BetsController < ApplicationController

  def create
   #raise params.inspect
    params.each do |key, value|
      #se a chave for um numero 
      if key.to_i.to_s == key
        
        @bet = Bet.new
        @bet.user_id = params[:user_id]
        @bet.fight_id = key.to_i
	      @bet.winner = value
	      @bet.save
      end
    end
    redirect_to bet_path(@bet)
  end

  def show
    @bets = Bet.all
  end

end
