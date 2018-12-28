class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name
      t.references :series, foreign_key: true
      t.string :slug
      t.string :short_description
      t.text :long_description
      t.string :facebook_event_link

      t.timestamps
    end
  end
end
