Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get "/goals", to: "goals#index"
      post "/users", to: "users#create"
      get "/users", to: "users#index"
    end
  end
end
