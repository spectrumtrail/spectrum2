class RenameEmergencyContactNameFields < ActiveRecord::Migration[5.2]
  def change
    rename_column :emergency_contacts, :first_name, :full_name
    rename_column :emergency_contacts, :last_name, :preferred_name
  end
end
