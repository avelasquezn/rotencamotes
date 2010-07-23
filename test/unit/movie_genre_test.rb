require 'test_helper'

class MovieGenreTest < ActiveSupport::TestCase
  # Replace this with your real tests.

  test "the truth" do
    assert true
  end
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

