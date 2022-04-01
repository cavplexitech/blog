Rails.application.routes.draw do
  # Default landing page
  root 'articles#index'

  resources :profiles
  get 'search/show'

  devise_for :users, controllers: {
    registrations: 'users/registrations' 
  }

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # this the shorcut to those^
  resources :articles do
    resources :comments
  end
end
