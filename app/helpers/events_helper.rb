module EventsHelper
  def non_betted_fights(event, current_user_id)
    list = []
    event.fights.each do |fight|
      list <<  fight unless fight.bets.exists?(:user_id => current_user_id)
    end
    list
   end 
end
