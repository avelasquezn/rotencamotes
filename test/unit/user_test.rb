require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :email
  should validate_presence_of :last_name
  should validate_uniqueness_of :email
  should have_one :profile
  should have_many :posts
  should have_one :blog
  should have_many :categories

  context 'A user instance' do
    setup do
      @user = Factory(:user)
    end

    should 'be member of community' do
      assert_equal true, @user.community_member?
    end

    context 'given a post' do
      setup do
        @blog = Factory(:blog)
        @post = Factory(:post, :blog => @blog)
      end

      context 'when comments on the post' do
        setup do
          @comment = Factory(:comment, :post => @post, :user => @user, :content => 'My comment')
        end

        should 'own the comment' do
          assert_equal @comment.id, @user.comments.last.id
        end
      end
    end

    context 'when marked as member of experts' do
      setup do
        @user.mark_as_expert
      end

      should 'be an expert' do
        assert_equal true, @user.expert?
      end

      context 'given a blog assigned to him' do
        setup do
          @blog = Factory(:blog, :user => @user)
        end

        should 'own the blog' do
          assert_equal @blog.id, @user.blog.id
        end
      end

    end
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
#

