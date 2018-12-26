require "open-uri"

class MoviesController < ApplicationController
  def index
    if params[:query].present?
      uri = "http://0.0.0.0:3001/movies/find?" + "query=" + params[:query] 
      @response = open(uri).read
      @response = JSON.parse(@response)
    end
  end
end
