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

ActiveRecord::Schema.define(:version => 20141109132839) do

  create_table "artists", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.boolean "band"
    t.string  "image"
  end

  create_table "except_rock", :id => false, :force => true do |t|
    t.integer "id",            :default => 0, :null => false
    t.integer "rank"
    t.string  "name"
    t.integer "artist_id"
    t.integer "length"
    t.string  "location"
    t.integer "genre_id"
    t.string  "youtube_code"
    t.date    "released_date"
  end

  create_table "genres", :force => true do |t|
    t.string "name"
  end

  create_table "lyrics", :force => true do |t|
    t.integer  "song_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "no_audio", :id => false, :force => true do |t|
    t.integer "id",            :default => 0, :null => false
    t.integer "rank"
    t.string  "name"
    t.integer "artist_id"
    t.integer "length"
    t.string  "location"
    t.integer "genre_id"
    t.string  "youtube_code"
    t.date    "released_date"
  end

  create_table "song_by_genre", :id => false, :force => true do |t|
    t.string  "NAME"
    t.integer "qty",     :limit => 8,                                :default => 0, :null => false
    t.decimal "Minutes",              :precision => 36, :scale => 4
  end

  create_table "song_detail_by_genre", :id => false, :force => true do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.date   "released_date"
    t.string "genre"
  end

  create_table "songs", :force => true do |t|
    t.integer "rank"
    t.string  "name"
    t.integer "artist_id"
    t.integer "length"
    t.string  "location"
    t.integer "genre_id"
    t.string  "youtube_code"
    t.date    "released_date"
    t.integer "rating",        :default => 0
  end

  create_table "total_length", :id => false, :force => true do |t|
    t.decimal "sum(LENGTH)/60", :precision => 36, :scale => 4
  end

end
