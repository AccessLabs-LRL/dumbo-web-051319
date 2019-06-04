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

end
