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
      @post = Factory.create(:post)
    end

    should "start as a drafted" do
      assert_equal true, @post.drafted?
      #TODO: generate default value for drafted_at
    end

    context "when marked as reviewed" do
      setup do
        @post.mark_as_reviewed
      end

      should "be reviewed" do
        assert_equal true, @post.reviewed?
        assert_not_nil @post.reviewed_at
      end
    end

    context "when marked as published" do
      setup do
        @post.mark_as_published
      end

      should "be published" do
        assert_equal true, @post.published?
        assert_not_nil @post.published_at
      end
    end

    context "when assigned some categories" do
      setup do
        @category = Factory.create(:category, :name => 'IT')
        @post.categories << @category
        @category = Factory.create(:category, :name => 'Business')
        @post.categories << @category
        @post.save
      end

      should "return its category names" do
        assert_equal 'IT,Business', @post.category_names
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

