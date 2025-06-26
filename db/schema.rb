# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_06_25_213358) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "event_song_queues", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "song_id", null: false
    t.bigint "performer_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "hidden"
    t.index ["event_id"], name: "index_event_song_queues_on_event_id"
    t.index ["performer_id"], name: "index_event_song_queues_on_performer_id"
    t.index ["song_id"], name: "index_event_song_queues_on_song_id"
  end

  create_table "events", force: :cascade do |t|
    t.date "event_date"
    t.string "locale"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.string "tags"
    t.text "lyrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_song_queues", "events"
  add_foreign_key "event_song_queues", "performers"
  add_foreign_key "event_song_queues", "songs"
end
