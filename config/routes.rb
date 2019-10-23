Rails.application.routes.draw do

  resources :applicants, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :employers, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :job_applications, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :job_postings, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  
  resources :job_postings do
    resources :likes
  end

  get "/sessions/new", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy"

  get "employer_signup", to: "employers#login"
  get "applicant_signup", to: "applicants#login"

  root to: "pages#home"


end
