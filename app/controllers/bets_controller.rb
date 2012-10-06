class BetsController < ApplicationController

  def create
   #raise params.inspect
    params.each do |key, value|
      #se a chave for um numero 
      if key.to_i.to_s == key
        
        @bet = Bet.new
        @bet.user_id = params[:user_id]
	      @bet.winner = value
	      if @bet.save
          redirect_to(:events, :message => 'Aposta realizada!')
	      end
      end
    end
  end

end
