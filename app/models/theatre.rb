class Theatre < ActiveRecord::Base
  belongs_to            :movie_chain
  has_many              :schedules
  validates_presence_of :name
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

