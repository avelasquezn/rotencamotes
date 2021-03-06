class CommentsController < InheritedResources::Base
  respond_to    :html, :xml
  actions       :index, :show, :new, :create

  def default_path
    if @comment.post
      post_path(@comment.post, :anchor => "comments")
    else
      movie_path(@comment.movie, :anchor => "comments")
    end
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
    create!  do
      
      if current_user
        Score.rate(current_user, @comment.movie_id,params[:theatre_id],params[:score_value],@comment.id)
      end
      default_path 
          
    end
  end

end

