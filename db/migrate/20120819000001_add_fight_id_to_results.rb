class AddFightIdToResults < ActiveRecord::Migration
  def change
    add_column :results, :fight_id, :integer
  end
end
