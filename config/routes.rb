Rails.application.routes.draw do
<<<<<<< HEAD
  resources :applicants, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :employers, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :job_applications, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :job_postings, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  get "/sessions/new", to: "sessions#new", as: "new_session"
  post "/sessions", to: "session#create", as: "sessions"
  delete "/sessions", to: "session#destroy"

  get "employer_signup", to: "employers#signup"
  get "applicant_signup", to: "applicants#signup"

  root to: "pages#home"
=======
  

  resources :applicants
  resources :employers
  resources :job_applicants
  resources :job_postings

  get "/sessions/new", to: "sessions#new", as:"new_session"
  post "/sessions", to: "session#create", as:"sessions"
  delete "/sessions", to: "session#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> 8bc38a3e9ec23a73de21f1070d5c6251c754a63d
end
