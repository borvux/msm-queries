class MoviesController < ApplicationController
  def index
    render({ :template => "movies_templates/index" })
  end

  def show
    movie_id = params.fetch("movie_id")

    matching_movie = Movie.where({ :id => movie_id })
    @movie = matching_movie.first

    matching_director = Director.where({ :id => @movie.director_id })
    @director = matching_director.first

    render({ :template => "movies_templates/show" })
  end
end
