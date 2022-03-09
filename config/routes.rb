Rails.application.routes.draw do
  
  # Default landing page
  root "articles#index" 
  
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show" 
  resources :articles # this the shorcut to those^

end
