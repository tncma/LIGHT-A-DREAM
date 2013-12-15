class AddPointsToEventregistrations < ActiveRecord::Migration
  def change
    add_column :eventregistrations, :points, :integer
  end
end
