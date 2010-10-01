class HomeController < ApplicationController
  def index
    if params[:filter]
      case params[:filter]
      when "ahora"
        @movies = Schedule.scheduled_movies_from_now * 6
      when "estrenos"
        @movies = Movie.on_theatres * 3
      when "recomendadas"
        @movies = Movie.recommended(20)
      end
    else
      @movies = Schedule.scheduled_movies_from_now * 6#Schedule.scheduled_movies * 3
    end
    logger.info "Mandando #{@movies.size} películas"    
    @posts = Post.last_published(5)
    @schedules =Schedule.scheduled_movies
    @comments = Comment.last_published(6)
    respond_to do |wants|
      wants.html # =>   
      wants.js do 
          render :update do |page|
            page.replace "movies_top", :partial => "banner" #, :collection => @movies
          end
      end
    end
  end
end

