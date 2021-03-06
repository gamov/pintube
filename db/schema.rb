# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160604145428) do

  create_table "boards", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "boards", ["name"], name: "index_boards_on_name"

  create_table "boards_videos", id: false, force: :cascade do |t|
    t.integer "board_id", null: false
    t.integer "video_id", null: false
  end

  add_index "boards_videos", ["board_id"], name: "index_boards_videos_on_board_id"
  add_index "boards_videos", ["video_id"], name: "index_boards_videos_on_video_id"

  create_table "videos", force: :cascade do |t|
    t.string   "url",        null: false
    t.text     "yt_data"
    t.string   "yt_id",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "videos", ["created_at"], name: "index_videos_on_created_at"
  add_index "videos", ["yt_id"], name: "index_videos_on_yt_id"

end
