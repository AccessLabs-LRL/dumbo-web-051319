class LabsController < ApplicationController

  def show
    @lab = Lab.find(params[:id])
  end

  def new
    @lab = Lab.new
    @students = Student.all
  end

  def create
    # byebug
    lab = Lab.create(lab_params)
    redirect_to lab
    # redirect_to student_path(lab.student)
    # redirect_to student_path(lab.student.id)
    # redirect_to "/students/#{lab.student_id}"
  end

  private

  def lab_params
    params.require(:lab).permit(:name)
  end

end
