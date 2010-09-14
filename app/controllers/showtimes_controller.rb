class ShowtimesController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show

  def default_path
    schedules_path
  end

  def index
    redirect_to default_path
  end

end

