Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # READ
  get 'tasks', to: 'tasks#index'
  # CREATE
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'task#create'
  # READ
  get 'taks/:id', to: 'tasks#show', as: :task
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
