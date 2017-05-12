class Api::V1::ClassStudentsController < ApplicationController
  before_action :find_registration, only: [:update]
  def index
    @registrations = ClassStudent.all
    render json: @registrations
  end

  def create
    @registration = ClassStudent.new(registration_params)
    if @registration.save
      render json: @registration
    else
      render json: @registration.errors, status: 422
    end
  end

  def update
    if @registration.update(registration_params)
      render json: @registration
    else
      render json: @registration.errors, status: 422
    end
  end

  private
  def find_registration
    @registration = Registration.find(params[:id])
  end

  def registration_params
    params.require(:registration).permit(:class_of_course_id,:student_id)
  end
end
