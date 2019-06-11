Rails.application.routes.draw do

  post "/students/:id/labs", to: "students#create_labs", as: :create_labs

  resources :student_labs
  resources :labs, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/hello", to:
  resources :students #, only: [:index, :show, :new, :create, :edit, :update, :delete] # =>
  # get "/students", to: "students#index"
  # get "/students/:id", to: "students#show"
  # get "/students/:id/edit", to: "students#edit"
  # put "/students/:id", to: "students#update"
  # get "/students/new", to: "students#new"
  # post "/students", to: "students#create"
  # delete "/students/:id", to: "students#destroy"
end
