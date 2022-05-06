class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render({ :template => "movies_templates/index.html.erb"})
  end
  def movie_details
    #params looks like {"mid"=>"42"}
    mov_id = params.fetch("mid")
    @the_movie = Movie.where({ :id => mov_id}).at(0)
    render({ :template => "movies_templates/show.html.erb"})
  end
end
