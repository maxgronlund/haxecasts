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

ActiveRecord::Schema.define(:version => 20120114010257) do

  create_table "badges", :force => true do |t|
    t.string   "url"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  create_table "code_examples", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "video_cast_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.string   "haxe_syntax"
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "video_cast_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flash_files", :force => true do |t|
    t.integer  "video_cast_id"
    t.string   "swf"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "size_x"
    t.integer  "size_y"
    t.string   "title"
  end

  create_table "resource_urls", :force => true do |t|
    t.integer  "video_cast_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "resource_url"
    t.string   "title"
  end

  create_table "text_contents", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identity"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                  :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128,  :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "role"
    t.string   "image"
    t.string   "crop_params",            :limit => 1024
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "grid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "video_casts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "mp4"
    t.string   "m4v"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ogv"
    t.string   "image"
    t.string   "crop_params",  :limit => 1024
    t.text     "notes"
    t.integer  "episode_nr"
    t.string   "play_time"
    t.string   "short_title"
    t.string   "webm"
    t.string   "slug"
    t.boolean  "publish"
    t.string   "source_code"
    t.boolean  "enable_video"
  end

  add_index "video_casts", ["slug"], :name => "index_video_casts_on_slug", :unique => true

end
