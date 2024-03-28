class DashboardController < ApplicationController
  def index
    @movies = Movie.all
    @hero_movie = Movie.last
  end
end
