class Profile < ActiveRecord::Base
  belongs_to :user
  # belongs_to :favorite_movie, :class_name => "Movie", :foreign_key => "favorite_movie_id"
  # belongs_to :favorite_actor, :class_name => "Person", :foreign_key => "favorite_actor_id"
  # belongs_to :favorite_genre, :class_name => "Genre", :foreign_key => "favorite_genre_id"
  # belongs_to :favorite_director, :class_name => "Person", :foreign_key => "favorite_director_id"
  # belongs_to :favorite_writer, :class_name => "Person", :foreign_key => "favorite_writer_id"

  has_many :favorites
  
  has_many :favorite_movies, :through =>:favorites, :source => :favoritable, :source_type => "Movie"
  has_many :favorite_actors, :through =>:favorites, :source => :favoritable, :source_type => "Actor"
  has_many :favorite_genres, :through =>:favorites, :source => :favoritable, :source_type => "Genre"
  has_many :favorite_directors, :through =>:favorites, :source => :favoritable, :source_type => "Director"
  has_many :favorite_writers, :through =>:favorites, :source => :favoritable, :source_type => "Writer"  
  
end




# == Schema Information
#
# Table name: profiles
#
#  id                       :integer(4)      not null, primary key
#  current_location         :string(255)
#  favorite_movie_character :string(255)
#  favorite_movie_line      :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#  user_id                  :integer(4)
#  favorite_movie_id        :integer(4)
#  favorite_actor_id        :integer(4)
#  favorite_genre_id        :integer(4)
#  favorite_director_id     :integer(4)
#  favorite_writer_id       :integer(4)
#

