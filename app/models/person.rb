class Person < ActiveRecord::Base
  validates_presence_of :last_name
  has_many :as_an_actor_fans, :class_name => "Profile",:foreign_key => "favorite_actor_id"
  has_many :as_a_writer_fans, :class_name => "Profile", :foreign_key => "favorite_writer_id"
  has_many :as_a_director_fans, :class_name => "Profile", :foreign_key => "favorite_director_id"
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

