require 'test_helper'

class PostTest < ActiveSupport::TestCase
  should belong_to :blog
  should belong_to :user
  should have_many(:categories).through(:post_categories)
  should have_many :comments
  should validate_presence_of :title
  should validate_presence_of :content
  should validate_uniqueness_of :title
  should validate_presence_of :user_id

  context "A Post instance" do
    setup do
      @post = Factory.build(:post)
    end

    should "start as a draft" do
      assert_equal "drafted", @post.status
    end

    context "marked as published" do
      setup do
        @post.mark_as_published
      end

      should "be published" do
        assert_equal "published", @post.status
      end
    end

    context "with categories" do
      setup do
        @category_one = Category.new
        @category_one.name = "IT"
        @category_two = Category.new
        @category_two.name = "Business"
        @post.categories << @category_one
        @post.categories << @category_two
      end

      should "return its category names" do
        assert_equal "IT,Business", @post.category_names
      end
    end
  end
end




# == Schema Information
#
# Table name: posts
#
#  id              :integer(4)      not null, primary key
#  title           :string(255)
#  content         :text
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
#  status          :string(255)     default("drafted")
#  created_at      :datetime
#  updated_at      :datetime
#

