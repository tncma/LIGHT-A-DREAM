class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventname
      t.string :location
      t.string :eventtype
      t.datetime :eventstart
      t.datetime :eventend

      t.timestamps
    end
  end
end
