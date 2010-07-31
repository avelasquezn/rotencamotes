require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should belong_to :user
  should have_many :favorite_movies
  should have_many :favorite_actors
  should have_many :favorite_genres
  should have_many :favorite_directors
  should have_many :favorite_writers
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

