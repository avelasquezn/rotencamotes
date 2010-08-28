class Showtime < ActiveRecord::Base
  belongs_to            :schedule
  validates_presence_of :shown_at
  validates_presence_of :status
end

# == Schema Information
#
# Table name: showtimes
#
#  id          :integer(4)      not null, primary key
#  schedule_id :integer(4)
#  shown_at    :datetime
#  description :string(255)
#  status      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

