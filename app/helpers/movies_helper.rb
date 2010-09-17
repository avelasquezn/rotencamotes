module MoviesHelper
  def render_genres_links
    @movie.genres.map {|g| link_to g.name, g}.join
  end
end

