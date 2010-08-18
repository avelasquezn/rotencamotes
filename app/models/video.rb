class Video < ActiveRecord::Base
  has_many :assets, :as => :attachable
  validates_presence_of :title
  validates_presence_of :content
end

# == Schema Information
#
# Table name: videos
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  video_type  :string(255)
#  content     :text
#  created_at  :datetime
#  updated_at  :datetime
#

