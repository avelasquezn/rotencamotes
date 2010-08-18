class Ad < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :content
  validates_presence_of :place
  validates_uniqueness_of :name
end

# == Schema Information
#
# Table name: ads
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  campaign    :string(255)
#  content     :text
#  started_at  :datetime
#  finished_at :datetime
#  place       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

