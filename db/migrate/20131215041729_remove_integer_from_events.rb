class RemoveIntegerFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :integer
  end

  def down
    add_column :events, :integer, :string
  end
end
