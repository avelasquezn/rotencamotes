class Studio < ActiveRecord::Base
  has_many :movies
end


# == Schema Information
#
# Table name: studios
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  address    :string(255)
#  bio        :text
#  created_at :datetime
#  updated_at :datetime
#

