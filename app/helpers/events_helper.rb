module EventsHelper
  def non_betted_fights(event, current_user_id)
    list = []
    event.fights.each do |fight|
      list <<  fight unless fight.bets.exists?(:user_id => current_user_id)
    end
    list
   end 

  def avaliable_fights(event, current_user_id)
    list = []
    event.fights.each do |fight|
      if !fight.result
        list <<  fight unless fight.bets.exists?(:user_id => current_user_id)
      end
    end
    list
  end

end
