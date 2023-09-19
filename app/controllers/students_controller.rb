class StudentsController < ApplicationController

  def index
    if params[:name].present?
      students = Student.select { |s| s.values_at("first_name", "last_name").include? params[:name].capitalize }
    else 
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
