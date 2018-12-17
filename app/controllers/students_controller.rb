class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name], created_at: params[:student][:created_at], updated_at: params[:student][:updated_at])
    redirect_to students_path
  end

end
