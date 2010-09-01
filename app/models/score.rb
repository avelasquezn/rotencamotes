class Score < ActiveRecord::Base
  # relationships
  belongs_to              :movie
  belongs_to              :user

  # validations
  validates_presence_of   :movie
  validates_presence_of   :user
  validates_presence_of   :value
  validates_presence_of   :scored_at
  validates_uniqueness_of :scored_at, :scope  => [:user_id, :movie_id]

  SOURCES = {
    :community  =>  'community',
    :experts     =>  'experts'
  }

  # named scopes
  named_scope :from_movie,
              lambda { |movie_id| {
                  :conditions =>  { :movie_id => movie_id },
                  :order      =>  'scored_at DESC'
                }
              }

  named_scope :from_user,
              lambda { |user_id| {
                  :conditions =>  { :user_id => user_id },
                  :order      =>  'scored_at DESC'
                }
              }

  named_scope :from_experts,
              :conditions =>  { :source  => SOURCES[:experts]  },
              :order      =>  'movie_id, user_id, scored_at DESC'

  named_scope :from_community,
              :conditions =>  { :source  => SOURCES[:community]  },
              :order      =>  'movie_id, user_id, scored_at DESC'

  # methods
  def community_score_for_movie(movie_id)
    return self.from_community.from_movie(movie_id).average('value')
  end

  def experts_score_for_movie(movie_id)
    return self.from_experts.from_movie(movie_id).average('value')
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

