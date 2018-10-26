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

ActiveRecord::Schema.define(version: 2018_10_25_221046) do

  create_table "files", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.string "indent_mode"
    t.integer "indent_size"
    t.boolean "line_wrap"
  end

  create_table "files_in_gists", force: :cascade do |t|
    t.integer "file_id"
    t.integer "gist_id"
    t.index ["file_id"], name: "index_files_in_gists_on_file_id"
    t.index ["gist_id"], name: "index_files_in_gists_on_gist_id"
  end

  create_table "gists", force: :cascade do |t|
    t.boolean "is_private"
    t.string "description"
  end

  create_table "user_saved_gists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gist_id"
    t.string "relationship"
    t.index ["gist_id"], name: "index_user_saved_gists_on_gist_id"
    t.index ["user_id"], name: "index_user_saved_gists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

end
