require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :last_name
  should have_many :as_an_actor_fans
  should have_many :as_a_director_fans
  should have_many :as_a_writer_fans
  should have_many(:directed_movies).through(:movie_directors)
  should have_many(:written_movies).through(:movie_writers)
  should have_many(:performed_movies).through(:movie_characters)
  should have_many :awards
  should validate_uniqueness_of(:first_name).scoped_to(:last_name)
end




# == Schema Information
#
# Table name: people
#
#  id                   :integer(4)      not null, primary key
#  first_name           :string(255)
#  middle_name          :string(255)
#  last_name            :string(255)
#  born_at              :datetime
#  born_in              :string(255)
#  bio                  :text
#  created_at           :datetime
#  updated_at           :datetime
#  url                  :string(255)
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer(4)
#  picture_updated_at   :datetime
#

