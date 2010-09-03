require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :title
  #should validate_uniqueness_of(:released_at).scoped_to(:title).case_insensitive
  #TODO: Review correct released_ta uniqueness validation syntax
  should have_many(:genres).through(:movie_genres)
  should have_many(:directors).through(:movie_directors)
  should have_many(:writers).through(:movie_writers)
  should have_many(:characters).through(:movie_characters)
  should have_many :fans
  should have_many :awards
  should belong_to :studio
  should have_many :scores

  context 'A movie instance without scores' do
    setup do
      @movie = Factory.create(:movie)
    end
    should 'have calculated scores of zero' do
      assert_equal 0.0, @movie.score_from_community
      assert_equal 0.0, @movie.score_from_experts
      assert_equal 0.0, @movie.final_score
    end
    context 'when scored by community members with values of 2, 3, and 4' do

      setup do
        [2,3,4].each do |score|
          create_community_member_score(score)
         end
      end

      should 'have 3 scores' do
        assert_equal 3, @movie.scores.count
      end
      should 'have a calculated community score of 3.0' do
        assert_in_delta 3.0, @movie.score_from_community, 0.01
      end
      should 'have a calculated final score of 24.0' do
        assert_in_delta 60.0, @movie.calculate_final_score, 0.01
      end
    end

    context 'when scored by experts with values of 50, 40 and 30' do
      setup do
        [50,40,30].each do |score|
          create_expert_score(score)
        end
      end

      should 'have 3 scores' do
        assert_equal 3, @movie.scores.count
      end
      should 'have a calculated experts score of 40.0' do
        assert_in_delta 40.0, @movie.score_from_experts, 0.01
      end
      should 'have a calculated final score of 24.0' do
        assert_in_delta 40.0, @movie.calculate_final_score, 0.01
      end
    end

    context 'when scored by by both community (with values of 2, 3, and 4) and experts (with values of 50, 40 and 30)' do
      setup do
        [2,3,4].each do |score|
          create_community_member_score(score)
         end
        [50,40,30].each do |score|
          create_expert_score(score)
        end
      end

      should 'have 6 scores' do
        assert_equal 6, @movie.scores.count
      end
      should 'have a calculated community score of 3.0' do
        assert_in_delta 3.0, @movie.score_from_community, 0.01
      end
      should 'have a calculated experts score of 40.0' do
        assert_in_delta 40.0, @movie.score_from_experts, 0.01
      end
      should 'have a calculated final score of 48.0' do
        assert_in_delta 48.0, @movie.calculate_final_score, 0.01
      end
    end
  end

  private

    def create_community_member_score(score)
      @user = Factory.create(:user)
      @score = Factory.create(:community_member_score, :movie => @movie, :user => @user, :value => score)
    end

    def create_expert_score(score)
     @user = Factory.create(:user)
     @score = Factory.create(:expert_score, :movie => @movie, :user => @user, :value => score)
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

