class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.references :race, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.boolean :terms_accepted

      t.timestamps
    end
  end
end
