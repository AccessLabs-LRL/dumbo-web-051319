Rails.application.routes.draw do
  resources :students, only: [:index, :show]

# 7 Standard Restfull routs
  # HTTP Verb |  URL  |  controller#action  | you can use as: to change/customize path helpers

  # get "/students", to: "students#index",
  # get "/students/:id", to: "students#show"
  # get "/students/:id/edit", to: "students#edit"
  # get "/students/new", to: "students#new"
  # post "/students", to: "students#create"
  # patch "/students/:id", to: "students#update"
  # delete "/students/:id", to: "students#destroy", as: "delete_cool_student"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
