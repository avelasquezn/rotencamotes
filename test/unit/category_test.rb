require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  should have_many :blogs
  should have_many(:posts).through(:post_categories)
end

# == Schema Information
#
# Table name: categories
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  category_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

