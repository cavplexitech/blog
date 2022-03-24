Rails.application.routes.draw do
  get 'profiles/show'
  devise_for :users

  # Default landing page
  root 'articles#index'

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # this the shorcut to those^
  resources :articles do
    collection do # search action for articles
      get :search
    end
    resources :comments
  end
end
