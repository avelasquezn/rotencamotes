class Member::BlogsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :all

  def default_path
    member_blogs_path
  end

  def update
    update!   { default_path }
  end

end

