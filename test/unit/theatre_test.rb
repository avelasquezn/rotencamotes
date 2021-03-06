require 'test_helper'

class TheatreTest < ActiveSupport::TestCase
  should belong_to            :movie_chain
  should have_many            :schedules
  should validate_presence_of :name
  should have_many            :scores
end


# == Schema Information
#
# Table name: theatres
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  address        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  movie_chain_id :integer(4)
#

