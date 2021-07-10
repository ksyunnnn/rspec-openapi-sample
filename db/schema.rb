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

ActiveRecord::Schema.define(version: 2021_07_08_153132) do

  create_table "companies", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "tel", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_seeker_basic_informations", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "job_seeker_id", null: false
    t.string "name", null: false
    t.integer "age", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_seeker_id"], name: "index_job_seeker_basic_informations_on_job_seeker_id"
  end

  create_table "job_seekers", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "recruiter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruiter_id"], name: "index_job_seekers_on_recruiter_id"
  end

  create_table "recruiter_basic_informations", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "recruiter_id", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruiter_id"], name: "index_recruiter_basic_informations_on_recruiter_id"
  end

  create_table "recruiters", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "job_seeker_basic_informations", "job_seekers"
  add_foreign_key "job_seekers", "recruiters"
  add_foreign_key "recruiter_basic_informations", "recruiters"
end
