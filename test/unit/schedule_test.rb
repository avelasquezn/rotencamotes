require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  # Relationships
  should belong_to            :theatre
  should belong_to            :movie
  should have_many            :showtimes
  # Validations
  should validate_presence_of :in_theatre_from
  should validate_presence_of :status
end

# == Schema Information
#
# Table name: schedules
#
#  id              :integer(4)      not null, primary key
#  theatre_id      :integer(4)
#  movie_id        :integer(4)
#  in_theatre_from :datetime
#  in_theatre_to   :datetime
#  description     :string(255)
#  status          :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

