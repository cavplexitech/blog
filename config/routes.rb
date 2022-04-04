Rails.application.routes.draw do
  # Default landing page
  root 'articles#index'
  get 'search/show'

  devise_for :users, controllers: {
    registrations: 'users/registrations' 
  }

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # this the shorcut to those^
  resources :articles do
    resources :comments, module: :articles
  end
  resources :profiles do
    resources :comments, module: :profiles
  end
end
