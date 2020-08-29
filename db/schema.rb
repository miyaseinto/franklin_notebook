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

ActiveRecord::Schema.define(version: 2020_08_28_042811) do

  create_table "diaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "priority1", null: false
    t.integer "priority2", null: false
    t.integer "priority3", null: false
    t.integer "priority4", null: false
    t.integer "priority5", null: false
    t.integer "priority6", null: false
    t.integer "priority7", null: false
    t.integer "priority8", null: false
    t.integer "priority9", null: false
    t.integer "priority10", null: false
    t.string "taskbox1", null: false
    t.string "taskbox2", null: false
    t.string "taskbox3", null: false
    t.string "taskbox4", null: false
    t.string "taskbox5", null: false
    t.string "taskbox6", null: false
    t.string "taskbox7", null: false
    t.string "taskbox8", null: false
    t.string "taskbox9", null: false
    t.string "taskbox10", null: false
    t.text "diary", null: false
    t.date "date", null: false
    t.integer "checkbox1"
    t.integer "checkbox2"
    t.integer "checkbox3"
    t.integer "checkbox4"
    t.integer "checkbox5"
    t.integer "checkbox6"
    t.integer "checkbox7"
    t.integer "checkbox8"
    t.integer "checkbox9"
    t.integer "checkbox10"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "targets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
