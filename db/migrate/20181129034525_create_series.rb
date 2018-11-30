class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :name
      t.string :short_description
      t.text :full_description
      t.boolean :allows_mass_registration
      t.datetime :mass_registration_open_at
      t.string :contact_email
      t.string :contact_name

      t.timestamps
    end
  end
end
