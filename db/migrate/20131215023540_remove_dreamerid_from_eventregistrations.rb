class RemoveDreameridFromEventregistrations < ActiveRecord::Migration
  def up
    remove_column :eventregistrations, :dreamer_id
  end

  def down
    add_column :eventregistrations, :dreamer_id, :string
  end
end
