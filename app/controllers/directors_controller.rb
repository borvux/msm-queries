class DirectorsController < ApplicationController
  def index
    render({ :template => "directors_templates/index"})
  end

  def show
    director_id = params.fetch("director_id")

    matching_director = Director.where({ :id => director_id})
    @director = matching_director.at(0)

    @matching_movies = Movie.where({ :director_id => director_id})

    render({ :template => "directors_templates/show"})
  end
end
