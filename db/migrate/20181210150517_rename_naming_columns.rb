class RenameNamingColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first_name, :full_name
    rename_column :users, :last_name, :preferred_name
  end
end
