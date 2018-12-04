class CreateEmergencyContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :emergency_contacts do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :relation
      t.string :cell_phone
      t.datetime :last_notified

      t.timestamps
    end
  end
end
