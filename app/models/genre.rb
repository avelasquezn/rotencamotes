class Genre < ActiveRecord::Base
  validates_presence_of :name
  has_many :movie_genres
  has_many :movies, :through => :movie_genres
  has_many :fans , :class_name => "Profile", :foreign_key => "favorite_genre_id"
end


# == Schema Information
#
# Table name: genres
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

