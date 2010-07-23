# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100723203708) do

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movie_directors", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "director_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movie_genres", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movie_writers", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "writer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "synopsis"
    t.datetime "released_at"
    t.string   "lenght"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country"
    t.string   "language"
    t.string   "mpaa_rate"
  end

  create_table "people", :force => true do |t|
    t.string   "firt_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "born_at"
    t.string   "born_in"
    t.string   "procedence"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

end
