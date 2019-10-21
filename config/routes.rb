Rails.application.routes.draw do
  
  resources :applicant, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :employer, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :job_applications, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :job_posting, only: [:new, :create, :show, :edit, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
