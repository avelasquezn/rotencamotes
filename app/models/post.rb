class Post < ActiveRecord::Base
end

# == Schema Information
#
# Table name: posts
#
#  id              :integer(4)      not null, primary key
#  title           :string(255)
#  content         :text
#  category_id     :integer(4)
#  user_id         :integer(4)
#  permalink       :string(255)
#  blog_id         :integer(4)
#  drafted_at      :datetime
#  published_at    :datetime
#  reviewed_at     :datetime
#  cached_tag_list :string(255)
#  comments_count  :integer(4)
#  visits_count    :integer(4)
#  rating          :decimal(4, 2)   default(0.0)
#  delta           :boolean(1)      default(TRUE)
#  status          :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

