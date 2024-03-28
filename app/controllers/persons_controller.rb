class PersonsController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update]

  def index
    @persons = Person.all
  end

  def show
    @directed_movies = Director.find_by(person_id: @person.id)
    @writers = Writer.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: "Person was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  
  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :date_of_birth, :date_of_death, :place_of_birth, :photo, :biography)
  end
end
