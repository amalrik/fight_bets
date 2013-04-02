module EventsHelper
  def non_betted_fights(event, current_user_id)
    list = []
    event.fights.each do |fight|
      list <<  fight unless fight.bets.exists?(:user_id => current_user_id)
    end
    list
   end 

  def avaliable_fights(fights, current_user_bets)
    list = []
    current_user_bets.each do |bet|
      list << bet.fight
    end  
    fights - list
  end

end
