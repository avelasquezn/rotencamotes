class ProfilesController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :edit, :update, :show

  def default_path
    profile_path(@profile)
  end

  def update
    update!   { default_path }
  end

end

