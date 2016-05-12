class PeopleController < ApplicationController
  
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
  	@people = Person.all.order(:first_name, :last_name)
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      PersonMailer.person_created(@person).deliver_now
      redirect_to @person, notice: 'Person was successfully created.'
    else
      render :new 
    end
  end

  def new
  	@person = Person.new
  end

  def edit
    @person.birthdate =  @person.birthdate.strftime("%d/%m/%Y")
  end

  def show
  end

  def update
     if @person.update(person_params)
      redirect_to @person, notice: 'Person was successfully updated.'
     else
      render :edit
     end
  end

  def destroy
    if @person.destroy
      PersonMailer.person_delated(@person).deliver_now
      redirect_to people_path, notice: 'Person deleted.'
    else
      redirect_to people_path, notice: 'Person could not be deleted.'
    end
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:first_name,:last_name,:email,:job,:bio,:gender,:birthdate,:picture)
    end

end
