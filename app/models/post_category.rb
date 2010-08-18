class PostCategory < ActiveRecord::Base
end

# == Schema Information
#
# Table name: post_categories
#
#  id          :integer(4)      not null, primary key
#  post_id     :integer(4)
#  category_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

