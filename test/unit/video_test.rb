require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  should validate_presence_of :title
  should validate_presence_of :content
  should have_many(:assets)
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

