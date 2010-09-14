class PostsController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show


  def default_path
    posts_path
  end

end

