class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_presence_of   :email
  validates_presence_of   :last_name, :on => :update
  validates_uniqueness_of :email
  has_one   :profile
  has_many  :posts
  has_many  :categories
  has_many  :comments
  has_one   :blog
  has_many  :scores

  after_create  :setup_profile

  devise  :registerable, :database_authenticatable,
          :recoverable,:rememberable, :trackable, :validatable


  ROLES = {
    :community  => 'community',
    :experts    => 'experts'
  }

  named_scope :community, :conditions =>  { :member_of => ROLES[:community] }
  named_scope :experts,   :conditions =>  { :member_of => ROLES[:experts]   }

  # methods

  def full_name
    "#{first_name} #{last_name}"
  end
  def mark_as_community_member
    self.member_of = ROLES[:community]
    self.save
  end

  def mark_as_expert
    self.member_of = ROLES[:experts]
    self.save
  end

  def community_member?
    self.member_of == ROLES[:community]
  end

  def expert?
    self.member_of == ROLES[:experts]
  end

  def rate_movie(movie_id, value)
    Score.rate(self, movie_id, value)
  end

  def allowed_to_post?
    self.blog.present? && expert?
  end

  def build_post
    if allowed_to_post?
      post = self.blog.posts.build
      post.user = self
      return post
    end
  end

  def allowed_to_score?
    true
  end

  def build_score
    if allowed_to_score?
      score = self.scores.build
      score.user = self
      return score
    end
  end

  def allowed_to_comment?
    true
  end

  def build_comment
    if allowed_to_comment?
      comment = self.comments.build
      comment.user = self
      return comment
    end
  end

  def setup_profile
    self.create_profile
  end
end




# == Schema Information
#
# Table name: users
#
#  id                   :integer(4)      not null, primary key
#  first_name           :string(255)
#  last_name            :string(255)
#  email                :string(255)     default(""), not null
#  password             :string(255)
#  born_at              :date
#  created_at           :datetime
#  updated_at           :datetime
#  member_of            :string(255)     default("community")
#  encrypted_password   :string(128)     default(""), not null
#  password_salt        :string(255)     default(""), not null
#  confirmation_token   :string(255)
#  confirmed_at         :datetime
#  confirmation_sent_at :datetime
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer(4)      default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  avatar_file_name     :string(255)
#  avatar_content_type  :string(255)
#  avatar_file_size     :integer(4)
#  avatar_updated_at    :datetime
#

