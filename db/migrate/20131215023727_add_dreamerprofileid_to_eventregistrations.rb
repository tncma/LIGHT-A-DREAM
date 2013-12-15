class AddDreamerprofileidToEventregistrations < ActiveRecord::Migration
  def change
    add_column :eventregistrations, :dreamer_profile_id, :string
    add_column :eventregistrations, :integer, :string
  end
end
