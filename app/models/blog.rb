class Blog < ActiveRecord::Base
  # relationships
  has_many              :blog_images
  has_many              :posts, :order => 'published_at DESC'
  belongs_to            :category
  belongs_to            :user
  validates_presence_of :name
  # permalink based on :name
  has_permalink         :name, :update => true, :if => Proc.new { |blog| blog.permalink.blank? }
  # attached :banner config
  has_attached_file     :banner, :styles => {:thumbnail =>"270x50", :large => "741x120>#"}
  #named scopes
  named_scope :active,
              :conditions => {:active => true}
  named_scope :inactive,
              :conditions => {:active => false}
  named_scope :from_named_category,
                lambda { |category_name|
                  { :conditions =>
                    {:blog => {:categories => {:permalink => category_name}}},
                  :joins => :category
                  }
                }

  # methods
  def owned?
    return false unless user
  end

  def self.list
    Blog.all
  end

  def last_updated
    return self.posts.published.empty? ? nil : self.posts.published.first.published_at
  end

  def profile
    return self.user_id.nil? ? nil : Profile.find_by_user_id(self.user_id)
  end

  def last_post
    return self.posts.published.empty? ? nil : self.posts.published.first
  end

  def tag_list
    Tag.find(:all, :select => "tags.name, count(taggins.tag_id) as tag_count",
              :joins => "INNER JOIN taggins ON taggins.tag_id = tags.id
                         INNER JOIN posts ON taggins.taggable_id = posts.id",
              :conditions => ["posts.blog_id = ?", self.id],
              :group => "taggings.tag_id",
              :order => "tag_count DESC",
              :limit => 8)
  end

  def months
    self.posts.find(:all,
                    :select => "count(*) as post_count, published_at",
                    :group  => "year(published_at), month(published_at)",
                    :order  => "published_at DESC")
  end

  def posts_categories
    self.user.categories.with_fields("name")
  end

  def category_name
    self.category.nil? ? '' : self.category.name
  end



  def update_posts_count
    self.posts_count = self.posts.empty? ? 0 : self.posts.count
  end
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
#  posts_count         :integer(4)
#  visits_count        :integer(4)
#  created_at          :datetime
#  updated_at          :datetime
#  user_id             :integer(4)
#  description         :text
#

