class CommentsController < InheritedResources::Base
  respond_to    :html, :xml
  actions       :index, :show, :new, :create

  def default_path
    post_path(@comment.post, :anchor => "comments")
  end

  def new
    if params[:post_id]
      if current_user
        @comment = current_user.build_comment_on(params[:post_id])
      else
        @comment = Comment.new(:post_id => params[:post_id])
      end
      new!
    end
  end

  def create
    if current_user
      Score.rate(current_user, params[:comment][:movie_id],params[:theatre_id],params[:score_value])
    end
    create!  { default_path }
  end

end

