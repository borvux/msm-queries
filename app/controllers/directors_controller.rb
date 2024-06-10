class DirectorsController < ApplicationController
  def index
    render({ :template => "directors_templates/view"})
  end
end
