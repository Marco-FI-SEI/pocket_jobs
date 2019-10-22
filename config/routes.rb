Rails.application.routes.draw do


  resources :applicant
  resources :employer
  resources :job_applicant
  resources :job_posting

  get "/sessions/new", to: "sessions#new", as:"new_session"
  post "/sessions", to: "session#create", as:"sessions"
  delete "/sessions", to: "session#destroy"

  get 'employer_signup', to: "employers#signup"
  get 'applicant_signup', to: "applicants#signup"

  root to: 'pages#home'

end
