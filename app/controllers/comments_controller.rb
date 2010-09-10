class CommentsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show, :new, :create

  def default_path
    comments_path
  end

  def new
    if params[:post_id]
      @comment = current_user.build_comment_on(params[:post_id])
    end
    new!
  end

  def create
    create!   { default_path }
  end

end

