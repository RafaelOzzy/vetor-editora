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

ActiveRecord::Schema[7.1].define(version: 2024_04_12_210438) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instrument_responses", force: :cascade do |t|
    t.bigint "instrument_id", null: false
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_instrument_responses_on_instrument_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.text "question_1"
    t.text "question_2"
    t.text "question_3"
    t.text "question_4"
    t.text "question_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "instrument_questions"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "cpf"
    t.string "phone_number"
    t.date "date_of_birth"
    t.boolean "admin", default: false
    t.boolean "psychologist", default: false
    t.boolean "patient", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "instrument_responses", "instruments"
end
