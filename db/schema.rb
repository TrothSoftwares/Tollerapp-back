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

ActiveRecord::Schema.define(version: 20170411111535) do

  create_table "assignations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "day"
    t.bigint "scheduleset_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scheduleset_id"], name: "index_assignations_on_scheduleset_id"
  end

  create_table "audios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "description"
    t.string "filename"
    t.string "url"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_audios_on_user_id"
  end

  create_table "examassignations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "time"
    t.string "file"
    t.bigint "examscheduleset_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["examscheduleset_id"], name: "index_examassignations_on_examscheduleset_id"
  end

  create_table "examschedulesets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examschedulesets_on_user_id"
  end

  create_table "examtimings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "time"
    t.string "file"
    t.bigint "examscheduleset_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["examscheduleset_id"], name: "index_examtimings_on_examscheduleset_id"
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.boolean "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id", "user_id"], name: "index_memberships_on_group_id_and_user_id"
  end

  create_table "schedulesets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_schedulesets_on_user_id"
  end

  create_table "tickets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "body"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "timings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "time"
    t.string "file"
    t.bigint "scheduleset_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scheduleset_id"], name: "index_timings_on_scheduleset_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "authentication_token", default: "", null: false
    t.string "role", default: "local"
    t.string "dyndns"
    t.string "internetport"
    t.string "ethernetport"
    t.string "nameofinstitution"
    t.string "contactno"
    t.string "location"
    t.date "installationdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignations", "schedulesets"
  add_foreign_key "audios", "users"
  add_foreign_key "examassignations", "examschedulesets"
  add_foreign_key "examschedulesets", "users"
  add_foreign_key "examtimings", "examschedulesets"
  add_foreign_key "schedulesets", "users"
  add_foreign_key "tickets", "users"
  add_foreign_key "timings", "schedulesets"
end
