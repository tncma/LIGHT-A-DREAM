class AddAttributeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobile, :integer
    add_column :users, :gender, :string
    add_column :users, :city, :string
  end
end
