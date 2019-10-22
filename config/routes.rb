Rails.application.routes.draw do
  

  resources :applicants
  resources :employers
  resources :job_applicants
  resources :job_postings

  get "/sessions/new", to: "sessions#new", as:"new_session"
  post "/sessions", to: "session#create", as:"sessions"
  delete "/sessions", to: "session#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
