module Member::BlogsHelper
  def blog_posts_count blog
    blog.posts_count.nil? || blog.posts_count.zero? ? 'sin opiniones' : friendly_pluralize(blog.posts_count, 'opinión', 'opiniones')
  end

  def blog_visits_count blog
    blog.visits_count.nil? || blog.visits_count.zero? ? 'sin visitas' : friendly_pluralize(blog.visits_count,'visita')
  end
end

