class Score < ActiveRecord::Base
  # relationships
  belongs_to              :movie
  belongs_to              :user
  belongs_to              :theatre

  # validations
  validates_presence_of   :movie
  validates_presence_of   :user
  validates_presence_of   :value
  validates_presence_of   :scored_at
  validates_uniqueness_of :movie_id, :case_sensitive => true, :scope => [:user_id, :scored_at]

  SOURCES = {
    :community  =>  'community',
    :experts    =>  'experts'
  }

  # named scopes
  named_scope :from_movie,
              lambda { |movie_id| {
                  :conditions =>  { :movie_id => movie_id },
                  :order      =>  'scored_at DESC'
                }
              }

  named_scope :with_value,
              lambda { |value| {
                  :conditions => {:value => value},
                  :order      => 'scored_at DESC'
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

  def self.count_for_community_approving_movie(movie_id)
    self.from_community.from_movie(movie_id).with_value(5).count
  end

  def self.count_for_community_disliking_movie(movie_id)
    self.from_community.from_movie(movie_id).with_value(1).count
  end

  def self.from_community_for_movie(movie_id)
    return self.from_community.from_movie(movie_id).average('value')
  end

  def self.from_experts_for_movie(movie_id)
    return self.from_experts.from_movie(movie_id).average('value')
  end

  def self.able_to_rate_movie(user, movie_id)
    user.scores.from_movie(movie_id).find_all_by_scored_at(Date.today).empty?
  end

  def self.rate(user, movie_id, theatre_id, value)
    if able_to_rate_movie(user, movie_id)
      score             = Score.new
      score.user_id     = user.id
      score.movie_id    = movie_id
      score.theatre_id  = theatre_id
      score.value       = value
      score.scored_at   = Date.today
      score.source      = user.member_of
      score.save
    else
      false
    end
  end

  def self.expert_weight(movie_id)
    Score.from_community.find_all_by_movie_id(movie_id).empty? ? 1.0 : 0.6
  end

  def self.community_weight(movie_id)
    Score.from_experts.find_all_by_movie_id(movie_id).empty? ? 1.0 : 0.4
  end

  def self.calculate_final_score(movie_id, score_from_community, score_from_experts)
    experts_factor    = 1
    community_factor  = 20
    return score_from_community*community_weight(movie_id)*community_factor +
           score_from_experts*expert_weight(movie_id)*experts_factor
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
#  theatre_id :integer(4)
#

