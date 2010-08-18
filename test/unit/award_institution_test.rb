require 'test_helper'

class AwardInstitutionTest < ActiveSupport::TestCase
  should have_many :awards
  should validate_presence_of :name
  should validate_uniqueness_of :name
end

# == Schema Information
#
# Table name: award_institutions
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  description       :text
#  bio               :text
#  url               :string(255)
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer(4)
#  logo_updated_at   :datetime
#  created_at        :datetime
#  updated_at        :datetime
#

