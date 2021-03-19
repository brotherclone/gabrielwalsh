Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :case_studies
  resources :case_study_items
  resources :copy_blocks
  resources :icons
  resources :jobs
  resources :my_roles
  resources :organizations
  resources :project_platforms
  resources :projects
  resources :sectors
  resources :skills
  resources :visuals

  root 'home#index'
  get 'home' => 'home#index'
end
