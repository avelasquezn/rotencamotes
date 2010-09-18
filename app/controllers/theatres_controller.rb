class TheatresController < InheritedResources::Base
  respond_to    :html, :xml
  actions       :index, :show

  def default_path
    theatres_path
  end
end

