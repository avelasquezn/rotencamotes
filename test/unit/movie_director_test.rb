require 'test_helper'

class MovieDirectorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should belong_to :movie
  should belong_to :director
end

# == Schema Information
#
# Table name: movie_directors
#
#  id          :integer(4)      not null, primary key
#  movie_id    :integer(4)
#  director_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

