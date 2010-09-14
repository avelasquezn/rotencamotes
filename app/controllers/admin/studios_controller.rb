class Admin::StudiosController < InheritedResources::Base
  before_filter :authenticate_admin!
  def default_path
    admin_studios_path
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

