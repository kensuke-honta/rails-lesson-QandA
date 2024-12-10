Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "questions#index"
  resources :questions do
    resources :answers
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
