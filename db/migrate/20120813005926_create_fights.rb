class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.string :contender, :null => false
      t.string :challenger, :null => false
      t.integer :result_id
      t.timestamps
    end
  end
end
