class PostsController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show


  def default_path
    posts_path
  end

  def index
    if params[:movie_id]
      @posts = Movie.find(params[:movie_id]).posts
    else
      @posts = Post.published
    end
    index!
  end

  def show
    @post = Post.find_by_id(params[:id])
    @comment = @post.comments.build
    if current_user
      @comment.user_id = current_user.id
      @comment.email = current_user.email
      @comment.name = current_user.full_name
    end
    show! {default_path}
  end
end

