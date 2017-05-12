class Api::V1::StudentsController < ApplicationController
  before_action :find_student, only: [:update, :destroy, :show]

  def index
    if search_param.present?
      @students = Elasticsearch::Model
                    .search(search_param, search_models).records
    else
      @students = Student.all
    end
    render json: @students
  end

  def show
    render json: @student
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student
    else
      render json: @student.errors, status: 422
    end
  end

  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: 422
    end
  end

  def destroy
    @student.destroy
    render json: {message: "student deleted"}
  end

  private

  def search_models
    [Student, AccessCard]
  end

  def search_param
    params[:search_param]
  end

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :birthdate,
                                    access_card_attributes: [:registration_number,
                                                             :emission_date])
  end
end
