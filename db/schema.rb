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

ActiveRecord::Schema.define(version: 2020_05_06_124508) do

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctor_comments", force: :cascade do |t|
    t.text "content"
    t.integer "doctor_id"
    t.integer "opinion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctor_comments_on_doctor_id"
    t.index ["opinion_id"], name: "index_doctor_comments_on_opinion_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "family_name"
    t.string "first_name"
    t.string "family_name_kana"
    t.string "first_name_kana"
    t.integer "gender"
    t.string "date_of_birth"
    t.string "registration_number"
    t.string "registration_date"
    t.text "description"
    t.string "image"
    t.integer "hospital_id"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_doctors_on_department_id"
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["hospital_id"], name: "index_doctors_on_hospital_id"
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "founder"
    t.string "founder_kana"
    t.string "administer"
    t.string "administer_kana"
    t.string "post_code"
    t.string "address"
    t.string "phone_number"
    t.string "homepage"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.text "content"
    t.integer "post_id"
    t.integer "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_opinions_on_doctor_id"
    t.index ["post_id"], name: "index_opinions_on_post_id"
  end

  create_table "patient_comments", force: :cascade do |t|
    t.text "content"
    t.integer "patient_id"
    t.integer "opinion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opinion_id"], name: "index_patient_comments_on_opinion_id"
    t.index ["patient_id"], name: "index_patient_comments_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "family_name"
    t.string "first_name"
    t.string "family_name_kana"
    t.string "first_name_kana"
    t.string "phone_number"
    t.integer "gender"
    t.string "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string "refferal"
    t.string "desease_name"
    t.string "detail"
    t.integer "patient_id"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_posts_on_department_id"
    t.index ["patient_id"], name: "index_posts_on_patient_id"
  end

end
