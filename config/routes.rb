Rails.application.routes.draw do
<<<<<<< HEAD
  

  resources :applicant
  resources :employer
  resources :job_applicant
  resources :job_posting

  get "/sessions/new", to: "sessions#new", as:"new_session"
  post "/sessions", to: "session#create", as:"sessions"
  delete "/sessions", to: "session#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======

  root to: 'pages#home'

  resources :applicants
  resources :employers
>>>>>>> general_pages
end
