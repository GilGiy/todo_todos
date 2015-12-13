Rails.application.routes.draw do
  devise_for :users
  root 'todos#index'
  resources 'todos'
  resources 'categories'
  get '/todos/new' => 'todos#new'
end
