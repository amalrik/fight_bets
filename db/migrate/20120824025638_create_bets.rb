class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :user_id
      t.integer :fight_id
      t.string :winner

      t.timestamps
    end
  end
end
