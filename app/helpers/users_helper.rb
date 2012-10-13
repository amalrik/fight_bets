module UsersHelper
  def bet_won(fight_bet,fight)
    if fight.result
      if fight_bet.winner == fight.result.winner
        "Ganhou"
      else
        "Perdeu"
      end
    else
      false
    end
  end
end
