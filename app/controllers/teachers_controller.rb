class TeachersController < ApplicationController
  def index

  	@teachers = Teacher.all

  	format.json { render :json => @teachers, :except => :id }

  end
end
