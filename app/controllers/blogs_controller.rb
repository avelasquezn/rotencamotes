class BlogsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show

=begin
  def default_path
    blogs_path
  end

  def create
    create!   { default_path }
  end

  def destroy
    destroy!  { default_path }
  end
=end
end

