require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :title
#  should validate_uniqueness_of(:released_at).scoped_to(:title)
  should have_many(:genres).through(:movie_genres)
  should have_many(:directors).through(:movie_directors)
  should have_many(:writers).through(:movie_writers)
  should have_many(:characters).through(:movie_characters)
  should have_many :fans
  should have_many :awards
  should belong_to :studio
  should have_many :scores

  context 'A movie instance' do
    setup do
      puts "Does this appears?"
      @movie = Factory.create(:movie)
      puts @movie.inspect
    end
    should 'have calculated scores of zero' do
      assert_equal 0.0, @movie.score_from_community
      assert_equal 0.0, @movie.score_from_experts
      assert_equal 0.0, @movie.final_score
    end
=begin
    should 'work' do
      assert_equal 1, 1
    end
=end
    context 'with a score' do
      setup do
        @score = Factory.create(:score)
        @score.save
        @movie.scores << @score
        @movie.save
      end

      should 'have a community score' do
        assert_equal 2.0, @movie.score_from_community
      end
    end
  end
end







# == Schema Information
#
# Table name: movies
#
#  id              :integer(4)      not null, primary key
#  title           :string(255)
#  summary         :text
#  synopsis        :text
#  released_at     :datetime
#  lenght          :string(255)
#  website         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  country         :string(255)
#  language        :string(255)
#  mpaa_rate       :string(255)
#  studio_id       :integer(4)
#  community_score :decimal(5, 2)   default(0.0)
#  experts_score   :decimal(5, 2)   default(0.0)
#  final_score     :decimal(5, 2)   default(0.0)
#

