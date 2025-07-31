# db/migrate/20250718004045_create_event_sets.rb
class CreateEventSets < ActiveRecord::Migration[8.0]
  def change
    create_table :event_sets do |t|
      t.references :event, null: false, foreign_key: true
      t.references :artist_set, null: false, foreign_key: true
      t.integer :position, default: 0
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :event_sets, [:event_id, :artist_set_id], unique: true
    add_index :event_sets, [:event_id, :position]
  end
end