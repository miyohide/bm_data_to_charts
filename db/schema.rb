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

ActiveRecord::Schema.define(version: 20140917144830) do

  create_table "experiment_details", force: true do |t|
    t.integer  "experiment_id"
    t.float    "cpu0"
    t.float    "cpu1"
    t.float    "cpu2"
    t.float    "cpu3"
    t.float    "cpu4"
    t.float    "cpu5"
    t.float    "cpu6"
    t.float    "cpu7"
    t.float    "memory"
    t.datetime "dstat_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiment_details", ["experiment_id"], name: "index_experiment_details_on_experiment_id"

  create_table "experiments", force: true do |t|
    t.datetime "experiment_at"
    t.string   "ruby_type"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dstat_data_file_name"
    t.string   "dstat_data_content_type"
    t.integer  "dstat_data_file_size"
    t.datetime "dstat_data_updated_at"
  end

  create_table "productionlog_results", force: true do |t|
    t.datetime "logging_at"
    t.float    "total_time"
    t.float    "view_time"
    t.float    "model_time"
    t.integer  "experiment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productionlog_results", ["experiment_id"], name: "index_productionlog_results_on_experiment_id"

end
