module PostsHelper
  def post_visits_count post
    post.visits_count.nil? or post.visits_count == 0 ? 'sin visitas' : friendly_pluralize(post.visits_count, 'visita')
  end

end

