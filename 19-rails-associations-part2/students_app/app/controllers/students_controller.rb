class StudentsController < ApplicationController
  def index
    @students = Student.all
    # render :index
  end

  def show
    @student = Student.find(params[:id])
    @student_lab = StudentLab.new
    @labs = Lab.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)

    redirect_to student
    # "/students/#{@student.id}"
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)

    redirect_to student
    # "/students/#{@student.id}"
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy

    redirect_to students_path
  end


  def create_labs
    @student = Student.find(params[:id])
    student_lab = StudentLab.create(lab_id: params[:student_lab][:lab_id], student_id: @student.id)
    redirect_to @student
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :favorite_food)
  end

end
