class RemoveFightIdFromBets < ActiveRecord::Migration
  def up
    remove_column :bets, :fight_id
  end

  def down
    add_column :bets, :fight_id, :integer
  end
end
