class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :hometown, :string
    add_column :users, :life_long_athlete, :boolean
    add_column :users, :is_rogue_member, :boolean
    add_column :users, :is_admin, :boolean
    add_column :users, :time_zone, :string
    add_column :users, :cell_phone, :string
  end
end
