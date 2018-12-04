class AddPreferredShirtSizeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :preferred_shirt_size, :string
  end
end
