Rails.application.routes.draw do
  root 'home#index'

  # get '/articles', to: 'articles#index'
  # get '/articles/:id', to: 'articles#show'

  resources :articles#, only: %i[index show new create edit update delete]
end
