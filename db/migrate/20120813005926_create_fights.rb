class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.string contender
      t.string challenger
      t.integer result_id
      t.timestamps
    end
  end
end
