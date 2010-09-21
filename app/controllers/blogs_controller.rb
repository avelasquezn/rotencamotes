class BlogsController < InheritedResources::Base
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

