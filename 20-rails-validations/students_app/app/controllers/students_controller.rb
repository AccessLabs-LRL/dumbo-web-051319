class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update, :delete]

  def index
    @students = Student.all
    # render :index
  end

  def show
    @student_lab = StudentLab.new
    @labs = Lab.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      redirect_to student
    else
      flash[:errors] = @student.errors.full_messages
      # render :new
      redirect_to new_student_path
    end
  end

  def edit
    # BEFORE ACTION IS TAKING CARE OF EVERYTHING WE GOOD
  end

  def update
    @student.update(student_params)
    if @student.valid?
      redirect_to @student
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to edit_student_path(@student)
    end

    # "/students/#{@student.id}"
  end

  def destroy
    @student.destroy

    redirect_to students_path
  end

  # EXTRA
  def create_labs
    student_lab = StudentLab.create(lab_id: params[:student_lab][:lab_id], student_id: @student.id)
    redirect_to @student
  end
  # EXTRA

  private

  def student_params
    params.require(:student).permit(:name, :age, :favorite_food)
  end

  def find_student
    @student = Student.find(params[:id])
  end


end
