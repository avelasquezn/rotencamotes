class ExternalLink < ActiveRecord::Base
  has_many :assets, :as => :attachable
  validates_presence_of :title
  validates_presence_of :url
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

