class AddContactPreferencesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :allows_email, :boolean, default: true
    add_column :users, :allows_texting, :boolean, default: true
  end
end
