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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130408061159) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "abbriviation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "releases", :force => true do |t|
    t.integer  "group_id"
    t.integer  "show_id"
    t.integer  "episode_number"
    t.string   "file_name"
    t.integer  "file_size"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "releases", ["group_id"], :name => "index_releases_on_group_id"
  add_index "releases", ["show_id"], :name => "index_releases_on_show_id"

  create_table "screenshots", :force => true do |t|
    t.integer  "release_id"
    t.integer  "time"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "screenshots", ["release_id"], :name => "index_screenshots_on_release_id"

  create_table "shows", :force => true do |t|
    t.string   "name"
    t.string   "alternate_name"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
