class MovieGenre < ActiveRecord::Base
  belongs_to :movie
  belongs_to :genre
end


# == Schema Information
#
# Table name: movie_genres
#
#  id         :integer(4)      not null, primary key
#  movie_id   :integer(4)
#  genre_id   :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

