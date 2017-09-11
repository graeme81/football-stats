class AddCapacityColumnToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :capacity, :integer
  end
end
