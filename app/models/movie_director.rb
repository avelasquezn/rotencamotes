class MovieDirector < ActiveRecord::Base
  belongs_to :movie
  belongs_to :director, :class_name => "Person", :foreign_key => "director_id"
end


# == Schema Information
#
# Table name: movie_directors
#
#  id          :integer(4)      not null, primary key
#  movie_id    :integer(4)
#  director_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

