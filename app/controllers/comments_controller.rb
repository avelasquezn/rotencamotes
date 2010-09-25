class CommentsController < InheritedResources::Base
  respond_to    :html, :xml
  actions       :index, :show, :new, :create

  def default_path
    comments_path
  end

  def new
    if params[:post_id]
      if current_user
        @comment = current_user.build_comment_on(params[:post_id])
      else
        @comment = Comment.new(:post_id => params[:post_id])
      end
    end
    new!
  end

  def create
    create!  { default_path }
  end

end

