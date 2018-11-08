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

ActiveRecord::Schema.define(version: 20181105001746) do

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "type_id"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.bigint   "phone_number"
    t.string   "home_address"
    t.string   "work_email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["type_id"], name: "index_employees_on_type_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start"
    t.datetime "end"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "employee_id"
    t.date     "scheduled_day"
    t.time     "hours"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["employee_id"], name: "index_schedules_on_employee_id"
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
