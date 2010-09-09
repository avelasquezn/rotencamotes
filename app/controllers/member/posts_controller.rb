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
    create!   { default_path }
  end

  def update
    update!   { default_path }
  end

  def destroy
    destroy!  { default_path }
  end


end

