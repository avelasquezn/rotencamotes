require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :title
  should validate_presence_of :photo_file_name
end

# == Schema Information
#
# Table name: photos
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  description        :text
#  photo_type         :string(255)
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer(4)
#  photo_updated_at   :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

