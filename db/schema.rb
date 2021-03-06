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

ActiveRecord::Schema.define(version: 20150113170312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "resorts", force: true do |t|
    t.string   "resort_name"
    t.string   "country"
    t.string   "nearest_airport"
    t.string   "transfer_time"
    t.integer  "size_of_ski_domain"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.integer  "easy_runs_km"
    t.integer  "medium_runs_km"
    t.integer  "hard_runs_km"
    t.string   "off_piste_rating"
    t.decimal  "cost_of_pass"
    t.string   "beginner_rating"
    t.integer  "apres_ski_rating"
    t.integer  "altitude"
  end

  add_index "resorts", ["slug"], name: "index_resorts_on_slug", using: :btree

end
