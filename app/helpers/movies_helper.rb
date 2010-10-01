module MoviesHelper
  def render_genres_links
    @movie.genres.map {|g| link_to g.name, g}.join(', ')
  end

  def render_cast_links
    @movie.movie_characters.map {|c| link_to c.cast_member, c.person}.join(', ')
  end

  def render_directors_links
    @movie.movie_directors.map {|d| link_to d.director.name, d.director}.join(', ')
  end

  def render_writers_links
    @movie.movie_writers.map {|w| link_to w.writer.name, w.writer}.join(', ')
  end

  def score_icon(score)
    if score
      score.value == 5 ? "camote" : "rotten"
    end
  end

end

