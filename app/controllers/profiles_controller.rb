class ProfilesController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :edit, :update, :show

  def default_path
    profiles_path
  end

  def update
    update!   { default_path }
  end

end

