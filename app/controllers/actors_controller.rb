class ActorsController < ApplicationController
  def index
    render({ :template => "actors_templates/index" })
  end

  def show
    actor_id = params.fetch("actor_id")

    matching_actor = Actor.where({ :id => actor_id })
    @actor = matching_actor.at(0)

    @matching_movies = Movie.where({ :director_id => actor_id })
    render({ :template => "actors_templates/show" })
  end
end
