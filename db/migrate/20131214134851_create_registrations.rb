class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :event_id
      t.integer :dreamer_id

      t.timestamps
    end
  end
end
