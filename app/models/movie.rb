class Movie < ActiveRecord::Base
  # relationships
  belongs_to :studio
  has_many :movie_genres
  has_many :genres, :through => :movie_genres
  has_many :movie_directors
  has_many :directors, :through => :movie_directors
  has_many :movie_writers
  has_many :writers, :through => :movie_writers
  has_many :movie_characters
  has_many :characters, :through => :movie_characters
  has_many :fans, :class_name => "Profile", :foreign_key => "favorite_movie_id"
  has_many :awards
  has_many :assets
  has_many :scores

  # validations
  validates_presence_of   :title
#  validates_uniqueness_of :released_at, :scope => :title

  #named scopes
  named_scope :from_named_genre,
              lambda{|genre_name|
                { :conditions => {:movie_genres=>{:genre=>{:genre_name => genre_name}}},
                  :joins      => {:movie_genres=>:genre}
                }
              }

  named_scope :from_director,
              lambda {|director_id|
                { :conditions => {:movie_directors=>{:director_id => director_id}},
                  :joins      => {:movie_directors=>:director}
                }
              }

  named_scope :from_writer,
              lambda {|writer_id|
                { :conditions => {:movie_writers=>{:writer_id => writer_id}},
                  :joins      => {:movie_writers=>:writer}
                }
              }

  named_scope :from_actor,
              lambda {|actor_id|
                { :conditions => {:movie_characters=>{:actor_id => actor_id}},
                  :joins      => {:movie_characters=>:actor}
                }
              }

  named_scope :from_country,
              lambda { |country_id|
                { :conditions => {:country_id => country_id}
                }
              }

  named_scope :from_studio,
              lambda { |studio_id|
                { :conditions => {:studio_id => studio_id}
                }
              }

  # methods
  def list
    Self.all
  end

=begin
  def genres_names
    return self.genres.empty? ? '' : genres.map(&:name).join(',')
  end

  def directors_names
    return self.directors.empty? ? '' : directors.map(&:name).join(',')
  end

  def writers_names
    return self.writers.empty? ? '' : writers.map(&:name).join(',')
  end
=end

  %w(genres directors writers).each do |method|
    define_method("#{method}_names") do
      self.send(method).empty? ? '' : self.send(method).map(&:name).join(',')
    end
  end

  %w(experts community).each do |score_source|
    define_method("score_from_#{score_source}") do
      result =  Movie.find_by_sql(['SELECT s1.value from scores s1, scores s2 '+
                                  'WHERE s1.source LIKE ? and s1.movie_id = ? '+
                                  'AND s2.source LIKE ? and s2.movie_id = ? '+
                                  'GROUP BY s1.value '+
                                  'HAVING SUM(SIGN(1-SIGN(s2.value-s1.value))) = '+
                                  '(COUNT(*)+1)/2',
                                  Score::SOURCES[score_source.to_sym], self.id,
                                  Score::SOURCES[score_source.to_sym], self.id])
      return result.empty? ? 0.0 : result.first.value.to_f

      # return self.scores.from_community.average('value')
    end
  end

  def calculate_final_score
    expert_weight     = 0.6 #0.4x20x3 + 0.6x1x40 = 24 + 24 = 48
    community_weight  = 0.4
    experts_factor    = 1
    community_factor  = 20

    return self.score_from_community*community_weight*community_factor +
           self.score_from_experts*expert_weight*experts_factor
  end

  def update_scores
    self.community_score  = self.score_from_community
    self.experts_score    = self.score_from_experts
    self.final_score      = self.calculate_final_score
    self.save
  end

  def self.update_all_scores
    Movie.all.each do | m |
      m.update_scores
    end
    # TODO: Implement SQL version
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

