require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should belong_to :user
  should belong_to :favorite_movie
  should belong_to :favorite_actor
  should belong_to :favorite_genre
  should belong_to :favorite_director
  should belong_to :favorite_writer
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

