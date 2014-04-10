class CreateEventLogos < ActiveRecord::Migration
  def change
    create_table :event_logos do |t|
      t.integer :logo_id

      t.timestamps
    end
  end
end
