class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :winner
      t.string :method
      t.integer :round

      t.timestamps
    end
  end
end
