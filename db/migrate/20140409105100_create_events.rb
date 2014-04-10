class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :title
      t.integer :logo_id
      t.date :date
      t.time :starttime
      t.time :endtime
      t.text :location_city
      t.integer :location_zip
      t.integer :restrictions_id
      t.text :participants
      t.text :price
      t.text :short_description
      t.text :full_description

      t.timestamps
    end
  end
end
