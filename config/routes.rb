Rails.application.routes.draw do

  root to: 'pages#home'

  resources :applicants
  resources :employers
end
