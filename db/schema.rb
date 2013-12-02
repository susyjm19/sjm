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

ActiveRecord::Schema.define(version: 20131129130811) do

  create_table "device_details", force: true do |t|
    t.string   "macAddress"
    t.string   "ipAddress"
    t.string   "osVersion"
    t.text     "function"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_models", force: true do |t|
    t.string   "model"
    t.text     "description"
    t.integer  "numberOfPort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.datetime "activityDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", force: true do |t|
    t.string   "name"
    t.string   "macAddress"
    t.string   "ipAddress"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "severity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "network_devices", force: true do |t|
    t.string   "brand"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "network_racks", force: true do |t|
    t.string   "brand"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oid_models", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oids", force: true do |t|
    t.string   "name"
    t.text     "message"
    t.string   "priorityLevel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identifier",    limit: 30
  end

  create_table "panel_brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "panel_models", force: true do |t|
    t.string   "name"
    t.integer  "numberOfPort"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "panels", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "port_models", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "port_panels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "identifier"
  end

  create_table "port_types", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_issues", force: true do |t|
    t.datetime "activityDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category",   limit: 30
  end

  create_table "switch_ports", force: true do |t|
    t.string   "name"
    t.string   "macAddress"
    t.string   "status"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vlans", force: true do |t|
    t.string   "name"
    t.string   "gateway"
    t.string   "netMask"
    t.integer  "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wall_plates", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
