class MoviesController < ApplicationController
  def index
    render({ :template => "movies_templates/index" })
  end

  def show
    movie_id = params.fetch("movie_id")

    matching_movie = Movie.where({ :id => movie_id})
    @movie = matching_movie.at(0)

    #@matching_movies = Movie.where({ :director_id => movie_id})
    render({ :template => "movies_templates/show" })
  end
end
