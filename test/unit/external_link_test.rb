require 'test_helper'

class ExternalLinkTest < ActiveSupport::TestCase
  should validate_presence_of :title
  should validate_presence_of :url
end

# == Schema Information
#
# Table name: external_links
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :string(255)
#  url         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

