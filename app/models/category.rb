class Category < ActiveRecord::Base
  has_many :blogs
  has_many :post_categories
  has_many :posts, :through => :post_categories
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :category_type
  validates_presence_of :permalink

end


# == Schema Information
#
# Table name: categories
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  category_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  user_id       :integer(4)
#  permalink     :string(255)
#

