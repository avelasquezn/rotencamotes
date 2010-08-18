require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  should belong_to :post
  should belong_to :user
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  post_id    :integer(4)
#  email      :string(255)
#  name       :string(255)
#  website    :string(255)
#  user_id    :integer(4)
#  parent_id  :integer(4)
#  content    :text
#  status     :string(255)
#  featured   :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#

