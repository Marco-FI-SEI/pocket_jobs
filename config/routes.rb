Rails.application.routes.draw do

  resources :applicants, only: [:new, :create, :show, :edit, :update]
  resources :employers, only: [:new, :create, :show, :edit, :update]
  resources :job_applications, only: [:index, :new, :create, :show, :edit, :update]
  resources :job_postings, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  
  

  get "/sessions/new", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy"

  get "employer_signup", to: "employers#new"
  get "applicant_signup", to: "applicants#new"

  root to: "pages#home"

 
end
