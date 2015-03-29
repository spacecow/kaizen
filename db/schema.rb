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

ActiveRecord::Schema.define(version: 20150328162116) do

  create_table "authors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authorships", force: :cascade do |t|
    t.integer "book_id",   limit: 4, null: false
    t.integer "author_id", limit: 4, null: false
  end

  add_index "authorships", ["author_id"], name: "fk_rails_925f77f584", using: :btree
  add_index "authorships", ["book_id"], name: "fk_rails_a96d89f9ee", using: :btree

  create_table "books", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "authorships", "authors"
  add_foreign_key "authorships", "books"
end
