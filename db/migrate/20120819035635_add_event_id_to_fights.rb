class AddEventIdToFights < ActiveRecord::Migration
  def change
    add_column :fights, :event_id, :integer
  end
end
