class BlogImage < ActiveRecord::Base
  belongs_to :blog
  validates_presence_of :image_file_name
end

# == Schema Information
#
# Table name: blog_images
#
#  id                 :integer(4)      not null, primary key
#  blog_id            :integer(4)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer(4)
#  image_updated_at   :datetime
#  image_url          :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

