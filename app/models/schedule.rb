class Schedule < ActiveRecord::Base
  # Relationships
  belongs_to            :theatre
  belongs_to            :movie
  has_many              :showtimes
  # Validations
  validates_presence_of :in_theatre_from
  validates_presence_of :status

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

