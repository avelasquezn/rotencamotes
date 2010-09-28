class Comment < ActiveRecord::Base
  # relationships
  belongs_to :post
  belongs_to :user
  belongs_to :movie
  
  # validations
  validates_presence_of :post
  validates_presence_of :content

  STATUSES = {
                :active     => 'active',
                :inactive   => 'inactive'
  }

  # named scopes
  named_scope :from_user,
              lambda { |user_id| {
                  :conditions =>  { :user_id => user_id },
                  :order      => 'created_at DESC'
                }
              }

  named_scope :from_post,
              lambda { |post_id| {
                  :conditions =>  { :post_id => post_id },
                  :order      => 'created_at DESC'
                }
              }

  named_scope :last_published,
              lambda { |limit| limit = 20 if limit.nil?
                { :order =>  'created_at DESC',
                  #:conditions => { :status => STATUSES[:active] },
                  :limit => limit
                }

              }
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  post_id    :integer(4)
#  email      :string(255)
#  name       :string(255)
#  website    :string(255)
#  user_id    :integer(4)
#  parent_id  :integer(4)
#  content    :text
#  status     :string(255)
#  featured   :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#

