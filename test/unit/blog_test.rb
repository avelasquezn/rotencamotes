require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  should validate_presence_of :name
  should have_many :posts
  should belong_to :category
  should have_many :blog_images
  should belong_to :user

  context 'A blog instance' do
    setup do
      @blog = Factory.create(:blog)
    end

    should 'have an owner' do
      assert true, @blog.owned?
    end

    should 'have nil last updated date' do
      assert_nil @blog.last_updated
    end

    should 'have no published posts' do
      assert_nil @blog.last_post
    end

    context 'when having published posts' do
      setup do
        @post = Factory.create(:published_post, :blog => @blog, :title => 'Last',   :published_at => 3.days.ago.at_beginning_of_day)
        @post = Factory.create(:published_post, :blog => @blog, :title => 'First',  :published_at => 1.week.ago.at_beginning_of_day)
      end

      should 'return the last published post' do
        assert_equal 'Last', @blog.last_post.title
      end

      should 'return the last published post date' do
        assert_equal 3.days.ago.at_beginning_of_day, @blog.last_updated
      end

    end
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
#  posts_counts        :integer(4)
#  visits_count        :integer(4)
#  created_at          :datetime
#  updated_at          :datetime
#  user_id             :integer(4)
#

