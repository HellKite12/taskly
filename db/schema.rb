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

ActiveRecord::Schema.define(version: 20140806200643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "task_lists", force: true do |t|
    t.string "name"
  end

  create_table "tasks", force: true do |t|
    t.integer "list_id"
    t.date    "date"
    t.text    "description"
  end

  create_table "users", force: true do |t|
    t.string "name",            null: false
    t.string "email",           null: false
    t.string "password_digest", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
