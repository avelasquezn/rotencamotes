require 'test_helper'

class MovieChainTest < ActiveSupport::TestCase
  should have_many :theatres
  should validate_presence_of :name
end



# == Schema Information
#
# Table name: movie_chains
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  address           :string(255)
#  bio               :text
#  created_at        :datetime
#  updated_at        :datetime
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer(4)
#  logo_updated_at   :datetime
#

