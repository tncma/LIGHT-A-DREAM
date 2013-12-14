class CreateLadderProfiles < ActiveRecord::Migration
  def change
    create_table :ladder_profiles do |t|
      t.string :registration_no
      t.string :institution

      t.timestamps
    end
  end
end
