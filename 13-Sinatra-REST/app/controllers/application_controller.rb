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
    erb :new
  end

  post '/students' do
    @student = Student.create(params)
    # COMMENT ABOUT ERB VS REDIRECT TO
    # erb -> Renders the view WITHOUT making a new request-response
    # redirect to -> Makes a new request-response, hitting the SHOW action in the controller

    # erb :show
    redirect to "/students/#{@student.id}"
  end

  get '/students/:id' do
    # COMMENT ABOUT .find VS .find_by
    # find -> Throws an error if passed in an invalid ID
    # find_by -> Returns nil if passed in an invalid ID/hash

    # @student = Student.find(params[:id])
    @student = Student.find_by(id: params[:id])
    @name = @student.name
    erb :show
  end
















end
