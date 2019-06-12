class StudentLabsController < ApplicationController

  def new
    @student_lab = StudentLab.new
    @students = Student.all
    @labs = Lab.all
  end

  def create
    # byebug
    @student_lab = StudentLab.create(student_lab_params)
    redirect_to @student_lab.student
    # redirect_to student_path(@student_lab.student)
  end

  private
  def student_lab_params
    params.require(:student_lab).permit(:student_id, :lab_id, :done)
  end

end
