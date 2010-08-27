require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  should have_many :blogs
  should have_many(:posts).through(:post_categories)
  should validate_presence_of :name
  should validate_presence_of :category_type
  should belong_to :user
  should validate_presence_of :permalink
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
#  user_id       :integer(4)
#  permalink     :string(255)
#

