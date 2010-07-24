require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :last_name
  should have_many :as_an_actor_fans
  should have_many :as_a_director_fans
  should have_many :as_a_writer_fans
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

