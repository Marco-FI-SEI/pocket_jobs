Rails.application.routes.draw do
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
end
