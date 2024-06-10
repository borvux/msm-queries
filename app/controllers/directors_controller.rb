class DirectorsController < ApplicationController
  def index
    render({ :template => "directors_templates/view"})
  end

  def show
    id = params.fetch("id")

    matching_director = Director.where({ :id => id})
    @director = matching_director.at(0)

    @matching_movies = Movie.where({ :director_id => id})

    render({ :template => "directors_templates/show"})
  end
end
