module MoviesHelper
  def render_genres_links
    @movie.genres.map {|g| link_to g.name, g}.join(', ')
  end

  def render_cast_links
    @movie.movie_characters.map {|c| link_to c.cast_member, c.person}.join(', ')
  end
end

