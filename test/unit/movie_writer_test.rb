require 'test_helper'

class MovieWriterTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should belong_to :movie
  should belong_to :writer
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

