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

ActiveRecord::Schema.define(version: 20200108072736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "subject_id"
    t.date     "start"
    t.date     "end"
    t.integer  "people_id"
    t.string   "code"
    t.integer  "total"
    t.integer  "lesson_id"
    t.integer  "room_id"
    t.index ["lesson_id"], name: "index_courses_on_lesson_id", using: :btree
    t.index ["room_id"], name: "index_courses_on_room_id", using: :btree
    t.index ["subject_id"], name: "index_courses_on_subject_id", using: :btree
  end

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "lesson_name"
    t.time     "start"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.time     "end"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "use"
    t.boolean  "status"
  end

  create_table "people", force: :cascade do |t|
    t.string   "person_name"
    t.string   "code"
    t.string   "sex"
    t.date     "born"
    t.string   "address"
    t.string   "telephone"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "department_id"
    t.integer  "user_id"
    t.index ["department_id"], name: "index_people_on_department_id", using: :btree
  end

  create_table "places", force: :cascade do |t|
    t.string   "lat"
    t.string   "lon"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "is_check_in"
    t.boolean  "is_check_out"
    t.datetime "check_in_at"
    t.datetime "check_out_at"
    t.date     "date"
    t.integer  "people_id"
    t.integer  "course_id"
  end

  create_table "points", force: :cascade do |t|
    t.integer  "people_id"
    t.date     "date"
    t.float    "point"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "register_courses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
    t.integer  "people_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "room_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "lat"
    t.string   "lon"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "courses", "lessons"
  add_foreign_key "courses", "rooms"
  add_foreign_key "courses", "subjects"
  add_foreign_key "people", "departments"
end
