class ReworkSeriesColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :series, :contact_name
    remove_column :series, :contact_email
    rename_column :series, :full_description, :long_description
    rename_column :series, :mass_registration_open_at, :mass_registration_opens_at
    add_column :series, :mass_registration_closes_at, :datetime, after: :mass_registration_opens_at
  end
end
