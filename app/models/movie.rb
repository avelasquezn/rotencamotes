class Movie < ActiveRecord::Base
  has_attached_file :banner, :styles => { :medium => "300x300>", :thumb => "100x100>", :banner => "150x222#", :scheduled => "65x97#" }

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
  has_many :schedules
  has_many :theatres, :through => :schedules
  has_many :posts
  has_many :comments

  MPAA_RATES = {
    :NR     => 'NR- This Film is Not Yet Rated',
    :G      => 'G- General Audiences',
    :PG     => 'PG- Parental Guidance Suggested',
    :"PG-13"=> 'PG-13- Parents Strongly Cautioned',
    :R      => 'R- Restricted',
    :"NC-17"=> 'NC-17- No One 17 and Under Admitted'
  }

  LANGUAGES = {
    :sp =>  'Spanish',
    :en =>  'English',
    :fr =>  'French',
    :de =>  'German',
    :ch =>  'Chinese',
    :jp =>  'Japanese',
    :pr =>  'Portuguese'
  }
  # validations
  validates_presence_of   :title
  validates_uniqueness_of :released_at, :scope => :title, :case_sensitive => false

  #named scopes
  named_scope :from_named_genre,
              lambda{|genre_name|
                { :conditions => {:movie_genres=>{:genres=>{:name => genre_name}}},
                  :joins      => {:movie_genres=>:genre},
                  :order      => 'released_at DESC'
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

  named_scope :on_theatres,
              :select     => 'distinct movies.*',
              :conditions => { :schedules => {:status => Schedule::STATUSES[:active]}},
              :joins      => :schedules
              
  named_scope :recommended, 
              lambda {|limit|
                limit ||= 5
                { :limit=>limit, 
                  :order=>"final_score DESC"
                }
              }
              
  # methods
  def list
    self.all
  end

  %w(genres directors writers).each do |method|
    define_method("#{method}_names") do
      self.send(method).empty? ? '' : self.send(method).map(&:name).join(', ')
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
      Score.calculate_final_score(self.id, self.score_from_community, self.score_from_experts)
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

  def name_with_year
    name = "#{self.title}"
    name << " (#{self.released_at.year})" if self.released_at
  end

  def cast_names
    self.movie_characters.empty? ? '' : self.movie_characters.map(&:cast_member).join(', ')
  end
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
  
end









# == Schema Information
#
# Table name: movies
#
#  id                  :integer(4)      not null, primary key
#  title               :string(255)
#  summary             :text
#  synopsis            :text
#  released_at         :datetime
#  lenght              :string(255)
#  website             :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  country             :string(255)
#  language            :string(255)
#  mpaa_rate           :string(255)
#  studio_id           :integer(4)
#  community_score     :decimal(5, 2)   default(0.0)
#  experts_score       :decimal(5, 2)   default(0.0)
#  final_score         :decimal(5, 2)   default(0.0)
#  banner_file_name    :string(255)
#  banner_content_type :string(255)
#  banner_file_size    :integer(4)
#  banner_updated_at   :datetime
#

