class CreateDreamerProfiles < ActiveRecord::Migration
  def change
    create_table :dreamer_profiles do |t|
      t.string :category
      t.string :institution

      t.timestamps
    end
  end
end
