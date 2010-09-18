class GenresController < InheritedResources::Base

  respond_to    :html, :xml
  actions       :all

  def default_path
    genres_path
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

