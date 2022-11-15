Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#all"
  get "tasks/new", to: "tasks#new" # route to display task form
  post "tasks", to: "tasks#create" # handle the POST request generated when submitting new task form
  get "tasks/:id", to: "tasks#index", as: :task
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
end
