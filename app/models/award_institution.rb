class AwardInstitution < ActiveRecord::Base
  has_many :awards, :foreign_key => "institution_id"
  validates_presence_of :name
  validates_uniqueness_of :name
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

