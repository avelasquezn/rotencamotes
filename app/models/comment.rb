class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates_presence_of :post
  validates_presence_of :user
  validates_presence_of :content
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

