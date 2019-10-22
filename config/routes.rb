Rails.application.routes.draw do

  root to: 'pages#home'
  
  resources :applicant
  resources :employer
  resources :job_applicant
  resources :job_posting
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
