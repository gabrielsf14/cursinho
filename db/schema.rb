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

ActiveRecord::Schema.define(version: 2019_08_27_230053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "call_lists", force: :cascade do |t|
    t.date "date"
    t.bigint "lesson_id"
    t.index ["lesson_id"], name: "index_call_lists_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presences", force: :cascade do |t|
    t.boolean "is_present"
    t.date "date"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_presences_on_student_id"
  end

  create_table "qr_codes", force: :cascade do |t|
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_qr_codes_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "registration"
    t.string "cpf"
    t.date "date_of_birth"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_students_on_lesson_id"
  end

  add_foreign_key "call_lists", "lessons"
  add_foreign_key "presences", "students"
  add_foreign_key "qr_codes", "students"
  add_foreign_key "students", "lessons"
end
