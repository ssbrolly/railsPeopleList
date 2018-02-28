class PeopleController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = person.new(person_params)
 
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end
 
  private
 
    def persons_params
      params.require(:person).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
    end

end
