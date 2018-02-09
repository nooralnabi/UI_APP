class PeopleController < ApplicationController
  # dbefore_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    respond_to do |format|
      format.html
      format.json { render json: PeopleDatatable.new(view_context) }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
     @person = Person.find(params[:id])
  end

end
