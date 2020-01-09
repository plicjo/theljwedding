# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_09_042656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_guests", id: :serial, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "food_option"
    t.integer "rsvp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "invite_status"
    t.index ["rsvp_id"], name: "index_additional_guests_on_rsvp_id"
  end

  create_table "guests", id: :serial, force: :cascade do |t|
    t.string "email"
    t.boolean "rsvp_status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", id: :serial, force: :cascade do |t|
    t.string "ingredient_description"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "recipe_steps", id: :serial, force: :cascade do |t|
    t.string "step_description"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_recipe_steps_on_recipe_id"
  end

  create_table "recipes", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "family_name"
    t.string "prep_time"
    t.string "cook_time"
    t.string "number_of_servings"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rsvp_emails", id: :serial, force: :cascade do |t|
    t.text "body"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rsvps", id: :serial, force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.boolean "attending"
    t.integer "food_option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "invite_status"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ingredients", "recipes"
  add_foreign_key "recipe_steps", "recipes"
end
