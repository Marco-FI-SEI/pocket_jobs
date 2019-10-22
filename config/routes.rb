Rails.application.routes.draw do
  
  resources :applicants, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :employers, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :job_applications, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :job_postings, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
