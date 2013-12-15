class CreateEventregistrations < ActiveRecord::Migration
  def change
    create_table :eventregistrations do |t|
      t.integer :event_id
      t.integer :dreamer_id

      t.timestamps
    end
  end
end
