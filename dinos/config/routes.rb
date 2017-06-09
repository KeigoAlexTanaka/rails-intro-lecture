Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "root#index"
  get "/welcome", to: "welcome#index"
  # post "/welcome", to: "welcome#create"
  # put "/welcome", to: "welcome#update"
  get "/welcome/:id", to: "welcome#show"

  resources :dinos, only: [:show, :index]
end
