require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
    # "<html><head></head><body><h1>🦄</h1></body></html>"
    # "🦄"
  end

  get '/cheese' do
    "<html><head></head><body><h1>Hello World</h1></body></html>"
  end

  get '/students' do
    @our_friends = "🦄" * 3
    search_term = params[:search_term]
    searched_students = Student.where(name: search_term)
    if searched_students.length > 0
      @students = searched_students
    else
      @students = Student.all
    end
    erb :students
  end

end
