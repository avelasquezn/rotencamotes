class Member::PostsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :all

  def default_path
    member_posts_path
  end

  def new
    @post = current_user.build_post
    new!
  end


  def create
    @post = Post.new(params[:post])
    case (params[:commit])
      when 'Crear' then
        @post.setup_to_mark_as_drafted
      when 'Publicar' then
        @post.setup_to_mark_as_published
    end
    create!   { default_path }
  end

  def update
    @post = Post.find(params[:id])
    @post.attributes = params[:post]
    case (params[:commit])
      when 'Publicar' then
        @post.setup_to_mark_as_published
      when 'A borrador' then
        @post.setup_to_mark_as_drafted
      when 'Actualizar' then
        @post.setup_to_mark_as_drafted
    end
    update!   { default_path }
  end

  def destroy
    destroy!  { default_path }
  end


end

