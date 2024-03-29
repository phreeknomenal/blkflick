class DirectorsController < ApplicationController
  before_action :set_director, only: [:show]
  
  def index
    @directors = Director.all
  end

  def show
  end

  private

  def set_director
    @director = Director.find(params[:id])
  end

  def director_params
    params.require(:director).permit(:first_name, :last_name, :date_of_birth, :place_of_birth, :biography, :photo)
  end
end
