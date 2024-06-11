class DirectorsController < ApplicationController
  def index
    render({ :template => "directors_templates/index" })
  end

  def show
    director_id = params.fetch("director_id")

    matching_director = Director.where({ :id => director_id })
    @director = matching_director.at(0)

    @matching_movies = Movie.where({ :director_id => director_id })

    render({ :template => "/directors_templates/show" })
  end

  def youngest
    finding_youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc })
    @youngest = finding_youngest.at(0)
    dob = @youngest.dob
    @date_formatted = dob.strftime("%B %d, %Y")

    render({ :template => "/directors_templates/youngest" })
  end

  def eldest
    finding_eldest = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    @eldest = finding_eldest.at(0)
    dob = @eldest.dob
    @date_formatted = dob.strftime("%B %d, %Y")

    render({ :template => "/directors_templates/eldest" })
  end
end
