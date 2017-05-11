class Api::V1::StudentsController < ApplicationController
  def index
    @students = Student.all
    render json: @students
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student
    else
      render json: @student.errors
    end
  end


  def student_params
    params.require(:student).permit(:name)
  end
end
