Rails.application.routes.draw do
  root 'main#index'

  post 'answer/create'
  get 'user/index'
  post 'user/create'
  get 'survey/index'
end
