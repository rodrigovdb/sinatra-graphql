# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_18_150538) do

  create_table "artists", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer "artist_id"
    t.string "name", null: false
    t.string "key"
    t.integer "duration"
    t.text "chords"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
  end

  create_table "speakers", force: :cascade do |t|
    t.string "name", null: false
    t.string "twitter_handle"
    t.text "bio"
    t.string "talk_title"
  end

end
