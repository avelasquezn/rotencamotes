class Genre < ActiveRecord::Base
  has_many :movie_genres
  has_many :movies, :through => :movie_genres
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

