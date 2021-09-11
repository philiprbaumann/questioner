Rails.application.routes.draw do
  root 'surveys#index'
  
  # ANSWER
  resource :answers, only: [:create, :new, :index] 

  # USER
  resource :users, only: [:create, :new, :index] 

  # SURVEY
  resource :surveys, only: [:create, :new, :index]
  post 'surveys/index', :to => 'answers#create'
end
