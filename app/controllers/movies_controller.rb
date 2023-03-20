class MoviesController < ApplicationController

  def index
   render json: @movies = Movie.all
  end
end
