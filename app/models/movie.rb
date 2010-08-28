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

  # validations
  validates_presence_of :title
  validates_presence_of :country
  validates_presence_of :language
  validates_presence_of :mpaa_rate
  validates_uniqueness_of :title

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

  #methods
  def list
    Self.all
  end

  def genre_names
    return self.genres.empty? ? "" : genres.map(&:name).join(",")
  end

end





# == Schema Information
#
# Table name: movies
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  summary     :text
#  synopsis    :text
#  released_at :datetime
#  lenght      :string(255)
#  website     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  country     :string(255)
#  language    :string(255)
#  mpaa_rate   :string(255)
#  studio_id   :integer(4)
#

