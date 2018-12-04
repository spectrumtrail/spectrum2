class AddPreferredDivisionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :preferred_division, :string
  end
end
