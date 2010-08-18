require 'test_helper'

class AwardCategoryTest < ActiveSupport::TestCase
  should have_many :awards
  should validate_presence_of :name
  should validate_uniqueness_of :name
end

# == Schema Information
#
# Table name: award_categories
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

