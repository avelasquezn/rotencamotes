class Blog < ActiveRecord::Base
end

# == Schema Information
#
# Table name: blogs
#
#  id                  :integer(4)      not null, primary key
#  name                :string(255)
#  permalink           :string(255)
#  banner_file_name    :string(255)
#  banner_content_type :string(255)
#  banner_file_size    :integer(4)
#  banner_updated_at   :datetime
#  banner              :string(255)
#  category_id         :integer(4)
#  active              :boolean(1)
#  posts_counts        :integer(4)
#  visits_count        :integer(4)
#  created_at          :datetime
#  updated_at          :datetime
#

