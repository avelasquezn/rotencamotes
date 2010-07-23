class MovieWriter < ActiveRecord::Base
  belongs_to :movie
  belongs_to :writer, :class_name => "Person", :foreign_key => "writer_id"
end

# == Schema Information
#
# Table name: movie_writers
#
#  id         :integer(4)      not null, primary key
#  movie_id   :integer(4)
#  writer_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

