require 'test_helper'

class MovieGenreTest < ActiveSupport::TestCase
  should belong_to :movie
  should belong_to :genre
end


# == Schema Information
#
# Table name: movie_genres
#
#  id         :integer(4)      not null, primary key
#  movie_id   :integer(4)
#  genre_id   :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

