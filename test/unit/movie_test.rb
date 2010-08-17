require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :title
  should validate_presence_of :country
  should validate_presence_of :language
  should validate_presence_of :mpaa_rate
  should have_many(:genres).through(:movie_genres)
  should have_many(:directors).through(:movie_directors)
  should have_many(:writers).through(:movie_writers)
  should have_many :fans
  should belong_to :studio
end






# == Schema Information
#
# Table name: movies
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  summary     :text
#  synopsis    :text
#  released_at :datetime
#  lenght      :string(255)
#  website     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  country     :string(255)
#  language    :string(255)
#  mpaa_rate   :string(255)
#  studio_id   :integer(4)
#

