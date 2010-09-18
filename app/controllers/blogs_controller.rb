class BlogsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show

  def default_path
    blogs_path
  end

  def index
    @blogs = Blog.active
    index!
  end
end

