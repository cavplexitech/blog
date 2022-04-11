Rails.application.routes.draw do
  # Default landing page
  root 'articles#index'
  get 'search/show' #global search
  get 'admin/show'

  devise_for :users, controllers: {
    registrations: 'users/registrations' 
  }

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # this the shorcut to those^
  resources :articles do
    collection do
      get :search
      get :search_featured
      get :search_daterange
    end
    resources :comments, module: :articles
  end

  resources :profiles do
    resources :comments, module: :profiles
  end

  resources :friendships

  put '/article/:id/like', to: 'articles#like', as: 'like'
  delete '/article/:id/like', to: 'articles#unlike', as: 'unlike'

end
