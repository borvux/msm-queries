class MoviesController < ApplicationController
  def index
    render({ :template => "movies_templates/index" })
  end

  def view
    render({ :template => "movies_templates/view" })
  end
end
