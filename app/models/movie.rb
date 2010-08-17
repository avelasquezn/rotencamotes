class Movie < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :country
  validates_presence_of :language
  validates_presence_of :mpaa_rate
  has_many :movie_genres
  has_many :genres, :through => :movie_genres
  has_many :movie_directors
  has_many :directors, :through => :movie_directors
  has_many :movie_writers
  has_many :writers, :through => :movie_writers
  has_many :fans, :class_name => "Profile", :foreign_key => "favorite_movie_id"
  has_many :assets
  belongs_to :studio

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

