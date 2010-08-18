class MovieCharacter < ActiveRecord::Base
  belongs_to :movie
  belongs_to :person
  validates_presence_of :character_name
end

# == Schema Information
#
# Table name: movie_characters
#
#  id             :integer(4)      not null, primary key
#  movie_id       :integer(4)
#  person_id      :integer(4)
#  character_name :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

