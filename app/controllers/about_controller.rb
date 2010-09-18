class AboutController < InheritedResources::Base
  respond_to    :html, :xml
  actions       :index

  def default_path
    about_path
  end

  def index
  end
end

