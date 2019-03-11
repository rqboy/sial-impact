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

ActiveRecord::Schema.define(version: 2019_03_11_163018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "initiative_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["initiative_id"], name: "index_activities_on_initiative_id"
  end

  create_table "conflicts", force: :cascade do |t|
    t.text "description"
    t.bigint "outcome_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outcome_id"], name: "index_conflicts_on_outcome_id"
  end

  create_table "initiative_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "initiative_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["initiative_id"], name: "index_initiative_users_on_initiative_id"
    t.index ["user_id"], name: "index_initiative_users_on_user_id"
  end

  create_table "initiatives", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "sector_activity"
    t.integer "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outcome_values", force: :cascade do |t|
    t.integer "value"
    t.bigint "outcome_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outcome_id"], name: "index_outcome_values_on_outcome_id"
  end

  create_table "outcomes", force: :cascade do |t|
    t.string "title"
    t.integer "objective_value"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_outcomes_on_activity_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "initiatives"
  add_foreign_key "conflicts", "outcomes"
  add_foreign_key "initiative_users", "initiatives"
  add_foreign_key "initiative_users", "users"
  add_foreign_key "outcome_values", "outcomes"
  add_foreign_key "outcomes", "activities"
end
