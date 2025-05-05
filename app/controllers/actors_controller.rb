class ActorsController < ApplicationController
  def index
    render({ :template => "actors_templates/index" })
  end

  def show
    actor_id = params.fetch("actor_id")

    matching_actor = Actor.where({ :id => actor_id })
    @actor = matching_actor.first # @actor = matching_actor.at(0)

    @matching_character = Character.where({ :actor_id => @actor.id })
    
    render({ :template => "actors_templates/show" })
  end
end
