class AwardCategory < ActiveRecord::Base
  has_many :awards, :foreign_key => "category_id"
  validates_presence_of :name
  validates_uniqueness_of :name
end

# == Schema Information
#
# Table name: award_categories
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

