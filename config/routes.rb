Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get "/goals", to: "goals#index"
      get "/goals_by_user", to: "goals#index_by_user"
      post "/goals", to: "goals#create"

      post "/users", to: "users#create"
      get "/users", to: "users#index"
      get "/question/:id", to: "question_prompts#show"
      get "/questions", to: "question_prompts#index"
      get "/questions_prompt/:topic", to: "question_prompts#find_topic"
    end
  end
end
