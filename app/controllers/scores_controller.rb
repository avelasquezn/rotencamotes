class ScoresController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :show


  def default_path
    movies_path
  end

end

