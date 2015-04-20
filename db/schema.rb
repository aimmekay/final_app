# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150420214556) do

  create_table "deskphones", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "serialNumber"
    t.text     "phoneNumber"
    t.text     "macAddress"
    t.text     "department"
    t.text     "location"
    t.text     "assignedTo"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "desktops", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "jslgTag"
    t.text     "manufacturerTag"
    t.text     "serialNumber"
    t.text     "osType"
    t.text     "hostName"
    t.text     "ram"
    t.text     "hdd"
    t.text     "department"
    t.text     "location"
    t.text     "assignedTo"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "dtus", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "serialNumber"
    t.text     "jslgTag"
    t.text     "macAddress"
    t.text     "hostName"
    t.text     "department"
    t.text     "location"
    t.text     "assignedTo"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "laptops", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "jslgTag"
    t.text     "manufacturerTag"
    t.text     "serialNumber"
    t.text     "osType"
    t.text     "hostName"
    t.text     "ram"
    t.text     "hdd"
    t.text     "department"
    t.text     "location"
    t.text     "assignedTo"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mobilecarts", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "jslgTag"
    t.text     "manufacturerTag"
    t.text     "serialNumber"
    t.text     "osType"
    t.text     "hostName"
    t.text     "department"
    t.text     "location"
    t.text     "assignedTo"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "printers", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "mrcId"
    t.text     "jslgTag"
    t.text     "serialNumber"
    t.text     "hostName"
    t.text     "ipAddress"
    t.text     "department"
    t.text     "location"
    t.text     "assignedTo"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "smartphones", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "carrier"
    t.text     "phoneNumber"
    t.text     "serialNumber"
    t.text     "meid"
    t.text     "macAddress"
    t.text     "department"
    t.text     "location"
    t.text     "assignedTo"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "toners", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.text     "color"
    t.text     "replacementId"
    t.text     "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
