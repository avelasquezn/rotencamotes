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

ActiveRecord::Schema.define(:version => 20100818042536) do

  create_table "ads", :force => true do |t|
    t.string   "name"
    t.string   "campaign"
    t.text     "content"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.string   "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_images", :force => true do |t|
    t.integer  "blog_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.string   "banner"
    t.integer  "category_id"
    t.boolean  "active"
    t.integer  "posts_counts"
    t.integer  "visits_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "category_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.string   "email"
    t.string   "name"
    t.string   "website"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.text     "content"
    t.string   "status"
    t.boolean  "featured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "external_links", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movie_chains", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "bio"
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
    t.integer  "studio_id"
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

  create_table "post_categories", :force => true do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "permalink"
    t.integer  "blog_id"
    t.datetime "drafted_at"
    t.datetime "published_at"
    t.datetime "reviewed_at"
    t.string   "cached_tag_list"
    t.integer  "comments_count"
    t.integer  "visits_count"
    t.decimal  "rating",          :precision => 4, :scale => 2, :default => 0.0
    t.boolean  "delta",                                         :default => true
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "current_location"
    t.string   "favorite_movie_character"
    t.string   "favorite_movie_line"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "favorite_movie_id"
    t.integer  "favorite_actor_id"
    t.integer  "favorite_genre_id"
    t.integer  "favorite_director_id"
    t.integer  "favorite_writer_id"
  end

  create_table "studios", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theatres", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movie_chain_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.date     "born_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
