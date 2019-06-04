require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/students' do
    @our_friends = "🦄" * 3
    search_term = params[:search_term]
    searched_students = Student.where("name like ?", "%#{search_term}%")
    if searched_students.length > 0
      @students = searched_students
    else
      @students = Student.all
    end
    erb :index
  end

  get '/students/new' do
    # binding.pry
    erb :new
  end

  post '/students' do
    # binding.pry
    @student = Student.create(params)
    # erb :show
    redirect to "/students/#{@student.id}"
  end

  get '/students/:id' do
    # binding.pry
    # @student = Student.find(params[:id])
    @student = Student.find_by(id: params[:id])
    @name = @student.name
    erb :show
  end
















end
