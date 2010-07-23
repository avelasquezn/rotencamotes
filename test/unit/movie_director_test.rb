require 'test_helper'

class MovieDirectorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

