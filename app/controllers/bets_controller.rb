class BetsController < ApplicationController

  def create
    params.each do |key, value|
      #se a chave for um numero, fazemos isso para pegar as apostas vindas dos radio buttons na view 
      if key.to_i.to_s == key
        
        @bet = Bet.new
        @bet.user_id = params[:user_id]
        @bet.fight_id = key.to_i
	      @bet.winner = value
	      @bet.save
      end
    end
    redirect_to user_url(params[:user_id])
  end

  def new(args)
    @user = args[:user]
    @fight = args[:fight]
    @winner = args[:winner]
  end

  def show
    @bets = Bet.all
  end

end
