class BlessingsController < ApplicationController

  get "/blessings/new" do
    @students = Student.all
    erb :"blessings/new"
  end

  post "/blessings" do
    # binding.pry
    blessing = Blessing.create(params[:blessing])
    redirect to "/students/#{blessing.student_id}"

    # redirect to "/students/#{blessing.student.id}"
    # redirect to "/students/#{params[:student_id]}"

  end

end
