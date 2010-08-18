class Photo < ActiveRecord::Base
  has_many :assets, :as => :attachable
  validates_presence_of :title
  validates_presence_of :photo_file_name
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

