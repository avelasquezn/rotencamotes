class Person < ActiveRecord::Base
  validates_presence_of :last_name
  has_many :movies, :foreign_key => "director_id"
end

# == Schema Information
#
# Table name: people
#
#  id          :integer(4)      not null, primary key
#  firt_name   :string(255)
#  middle_name :string(255)
#  last_name   :string(255)
#  born_at     :datetime
#  born_in     :string(255)
#  procedence  :string(255)
#  bio         :text
#  created_at  :datetime
#  updated_at  :datetime
#  url         :string(255)
#

