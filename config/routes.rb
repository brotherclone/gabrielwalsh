Rails.application.routes.draw do
  resources :jobs
  resources :served_roles
  resources :portfolio_image_call_outs
  resources :portfolio_images
  resources :industries
  resources :disciplines
  resources :skills
  resources :awards
  resources :degrees
  resources :organizations
  resources :projects
  root 'home#index'
  get 'home' => 'home#index'
end
