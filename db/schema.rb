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

ActiveRecord::Schema[8.0].define(version: 2025_07_31_123000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "artist_set_songs", force: :cascade do |t|
    t.bigint "artist_set_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artist_song_id", null: false
    t.index ["artist_set_id"], name: "index_artist_set_songs_on_artist_set_id"
    t.index ["artist_song_id"], name: "index_artist_set_songs_on_artist_song_id"
  end

  create_table "artist_sets", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.string "set_list_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artist_sets_on_artist_id"
  end

  create_table "artist_songs", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "song_id", null: false
    t.text "letra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id", "song_id"], name: "index_artist_songs_on_artist_id_and_song_id", unique: true
    t.index ["artist_id"], name: "index_artist_songs_on_artist_id"
    t.index ["song_id"], name: "index_artist_songs_on_song_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.string "link1"
    t.string "link2"
    t.string "link1_text"
    t.string "link2_text"
    t.text "social_message"
    t.index ["user_id"], name: "index_artists_on_user_id"
  end

  create_table "event_sets", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "artist_set_id", null: false
    t.integer "position", default: 0
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_set_id"], name: "index_event_sets_on_artist_set_id"
    t.index ["event_id", "artist_set_id"], name: "index_event_sets_on_event_id_and_artist_set_id", unique: true
    t.index ["event_id", "position"], name: "index_event_sets_on_event_id_and_position"
    t.index ["event_id"], name: "index_event_sets_on_event_id"
  end

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
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_events_on_artist_id"
  end

  create_table "performers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "tags"
    t.text "lyrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "band"
    t.string "mbid"
    t.string "isrc"
    t.index ["isrc"], name: "index_songs_on_isrc"
    t.index ["mbid"], name: "index_songs_on_mbid"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "name"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "artist_set_songs", "artist_sets"
  add_foreign_key "artist_set_songs", "artist_songs"
  add_foreign_key "artist_sets", "artists"
  add_foreign_key "artist_songs", "artists"
  add_foreign_key "artist_songs", "songs"
  add_foreign_key "artists", "users"
  add_foreign_key "event_sets", "artist_sets"
  add_foreign_key "event_sets", "events"
  add_foreign_key "event_song_queues", "events"
  add_foreign_key "event_song_queues", "performers"
  add_foreign_key "event_song_queues", "songs"
  add_foreign_key "events", "artists"
end
