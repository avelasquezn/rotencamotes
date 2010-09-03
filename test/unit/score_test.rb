require 'test_helper'

class ScoreTest < ActiveSupport::TestCase
  should belong_to :movie
  should belong_to :user
  should validate_presence_of :movie
  should validate_presence_of :user
  should validate_presence_of :scored_at
  should validate_presence_of :value
  # should validate_uniqueness_of(:movie_id).scoped_to(:user_id, :scored_at)

  context 'Given a movie' do
    setup do
      @movie = Factory(:movie)
    end

    context 'a user instance' do
      setup do
        @user = Factory(:user)
      end

      should 'rate the movie' do
        assert_equal true, Score.rate(@user, @movie.id, 30)
      end

      should 'not rate the movie twice' do
        assert_equal true, Score.rate(@user, @movie.id, 30)
        assert_equal false, Score.rate(@user, @movie.id, 20)
      end
    end
  end

end

# == Schema Information
#
# Table name: scores
#
#  id         :integer(4)      not null, primary key
#  movie_id   :integer(4)
#  user_id    :integer(4)
#  scored_at  :datetime
#  source     :string(255)
#  value      :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

