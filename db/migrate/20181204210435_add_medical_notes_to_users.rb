class AddMedicalNotesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :medical_notes, :string
  end
end
