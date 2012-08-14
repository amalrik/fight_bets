class AddCategoryToFights < ActiveRecord::Migration
  def change
    add_column :fights, :category, :string
  end
end
