require 'test_helper'

class MovieCharacterTest < ActiveSupport::TestCase
  should belong_to :movie
  should belong_to :person
  should validate_presence_of :character_name
  should validate_presence_of :person
  should validate_presence_of :movie
  should validate_uniqueness_of(:character_name).scoped_to(:movie_id)
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

