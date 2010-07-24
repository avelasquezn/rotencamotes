require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should have_many :fans
end

# == Schema Information
#
# Table name: genres
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

