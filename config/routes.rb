require 'resque/server'

Rails.application.routes.draw do
  devise_for :users
  resources :encounters
  resources :patients
  mount Resque::Server.new, at: "/resque"
  
end
