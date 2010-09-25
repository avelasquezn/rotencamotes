module PostsHelper
  def post_visits_count post
    post.visits_count.nil? or post.visits_count == 0 ? 'sin visitas' : friendly_pluralize(post.visits_count, 'visita')
  end
  def post_comments_count post
    post.comments.empty? ? 'sin comentarios' : friendly_pluralize(post.comments.count, 'comentario')
  end

  def allowed_to_act_on post
    current_user == post.user || current_admin
  end
end

