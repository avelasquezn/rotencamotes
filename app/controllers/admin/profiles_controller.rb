class Admin::ProfilesController < InheritedResources::Base
  before_filter :authenticate_admin!
  respond_to    :html, :xml
  actions       :all

  def default_path
    admin_profiles_path
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

