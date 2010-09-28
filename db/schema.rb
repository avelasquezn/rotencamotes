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

ActiveRecord::Schema.define(:version => 20100928161825) do

  create_table "admins", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["confirmation_token"], :name => "index_admins_on_confirmation_token", :unique => true
  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

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

  create_table "award_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "award_institutions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "bio"
    t.string   "url"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "awards", :force => true do |t|
    t.integer  "institution_id"
    t.integer  "category_id"
    t.integer  "year_received"
    t.string   "status"
    t.integer  "person_id"
    t.integer  "movie_id"
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
    t.integer  "posts_count"
    t.integer  "visits_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "description"
  end

  create_table "brain_busters", :force => true do |t|
    t.string "question"
    t.string "answer"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "category_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "permalink"
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
    t.integer  "movie_id"
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
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "movie_characters", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "person_id"
    t.string   "character_name"
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
    t.decimal  "community_score",     :precision => 5, :scale => 2, :default => 0.0
    t.decimal  "experts_score",       :precision => 5, :scale => 2, :default => 0.0
    t.decimal  "final_score",         :precision => 5, :scale => 2, :default => 0.0
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "born_at"
    t.string   "born_in"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "photo_type"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "status",                                        :default => "drafted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movie_id"
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

  create_table "schedules", :force => true do |t|
    t.integer  "theatre_id"
    t.integer  "movie_id"
    t.datetime "in_theatre_from"
    t.datetime "in_theatre_to"
    t.string   "description"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "user_id"
    t.datetime "scored_at"
    t.string   "source"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "theatre_id"
  end

  create_table "showtimes", :force => true do |t|
    t.integer  "schedule_id"
    t.datetime "shown_at"
    t.string   "description"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studios", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type"], :name => "index_taggings_on_taggable_id_and_taggable_type"

  create_table "tags", :force => true do |t|
    t.string "name"
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
    t.string   "email",                               :default => "",          :null => false
    t.string   "password"
    t.date     "born_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member_of",                           :default => "community"
    t.string   "encrypted_password",   :limit => 128, :default => "",          :null => false
    t.string   "password_salt",                       :default => "",          :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "website"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "video_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
